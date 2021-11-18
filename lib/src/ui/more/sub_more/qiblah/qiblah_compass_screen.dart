import 'dart:io';
import 'dart:math';

import 'package:al_quran/src/utils/app_theme.dart';
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
      backgroundColor: AppTheme.white,
      appBar: AppBar(
        leadingWidth: 98,
        backgroundColor: Color(0xFFDCDCDC),
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            child: Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                SvgPicture.asset(
                  "assets/icons/arrow_left_bold.svg",
                  height: 18,
                ),
                SizedBox(width: 5),
                Text(
                  "Back",
                  style: TextStyle(
                    color: Color(0xFF3A3A3C),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    letterSpacing: -0.41,
                  ),
                ),
              ],
            ),
          ),
        ),
        title: Text(
          "Qibla",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
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

        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: (MediaQuery.of(context).size.width - 32),
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
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
                ],
              ),
            ),
            SizedBox(height: 44),
            Text(
              "${qiblahDirection.offset.toStringAsFixed(0)}°",
              style: TextStyle(
                fontFamily: AppTheme.fontPoppins,
                fontWeight: FontWeight.w600,
                fontSize: 45,
                color: Color(0xFF1C1C1C),
              ),
            ),
            SizedBox(height: 24),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFEBEBEB),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  SizedBox(height: 6),
                  Text(
                    "Toshkent, Uzbekistan",
                    style: TextStyle(
                      fontFamily: AppTheme.fontPoppins,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xFF545454),
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "41 20’33’’ N    69 20’16’’ E ",
                    style: TextStyle(
                      fontFamily: AppTheme.fontPoppins,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF545454),
                    ),
                  ),
                  SizedBox(height: 6),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
