import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:permission_handler/permission_handler.dart';

class QiblahCompassScreen extends StatefulWidget {
  @override
  _QiblahCompassScreenState createState() => _QiblahCompassScreenState();
}

class _QiblahCompassScreenState extends State<QiblahCompassScreen> {
  bool isNext = false;

  @override
  void initState() {
    _permission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isNext
          ? FutureBuilder(
              future: FlutterQiblah.androidDeviceSensorSupport(),
              builder: (_, AsyncSnapshot<bool?> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting)
                  return (Platform.isAndroid)
                      ? CircularProgressIndicator()
                      : CupertinoActivityIndicator();
                if (snapshot.hasError)
                  return Center(
                    child: Text("Error: ${snapshot.error.toString()}"),
                  );

                if (snapshot.data!)
                  return QiblahCompassWidget();
                else
                  return Center(
                    child: Text(
                        "Error: =>  45   =>  ${snapshot.error.toString()}"),
                  );
              },
            )
          : Center(
              child: (Platform.isAndroid)
                  ? CircularProgressIndicator()
                  : CupertinoActivityIndicator(),
            ),
    );
  }

  Future<void> _permission() async {
    if (await Permission.location.request().isGranted) {
      if (await Permission.locationAlways.request().isGranted) {
        setState(() {
          isNext = true;
        });
      } else {
        print("ERROR");
      }
    }
  }
}

class QiblahCompassWidget extends StatelessWidget {
  final _compassSvg = SvgPicture.asset('assets/icons/compass.svg');
  final _needleSvg = SvgPicture.asset(
    'assets/icons/needle.svg',
    fit: BoxFit.contain,
    height: 300,
    alignment: Alignment.center,
  );

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FlutterQiblah.qiblahStream,
      builder: (_, AsyncSnapshot<QiblahDirection> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return (Platform.isAndroid)
              ? CircularProgressIndicator()
              : CupertinoActivityIndicator();

        final qiblahDirection = snapshot.data!;

        return Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Transform.rotate(
              angle: (qiblahDirection.direction * (pi / 180) * -1),
              child: _compassSvg,
            ),
            Transform.rotate(
              angle: (qiblahDirection.qiblah * (pi / 180) * -1),
              alignment: Alignment.center,
              child: _needleSvg,
            ),
            Positioned(
              bottom: 8,
              child: Text("${qiblahDirection.offset.toStringAsFixed(3)}°"),
            )
          ],
        );
      },
    );
  }
}
