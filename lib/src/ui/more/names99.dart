import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NamesScreen extends StatefulWidget {
  const NamesScreen({Key? key}) : super(key: key);

  @override
  _NamesScreenState createState() => _NamesScreenState();
}

class _NamesScreenState extends State<NamesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 125,
        backgroundColor: Color(0xFFDCDCDC),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              SizedBox(
                width: 16,
              ),
              Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF3A3A3C),
              ),
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
        title: Text(
          "Quran",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              left: 24,
              right: 24,
              top: 20,
            ),
            height: 178,
            width: MediaQuery.of(context).size.width - 48,
            decoration: BoxDecoration(
              color: Color(0xFFE2E2E2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.only(right: 12, top: 12),
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: Color(0xFFC4C4C4),
                borderRadius: BorderRadius.circular(16),
              ),
              child: SvgPicture.asset(
                "assets/icons/polygon.svg",
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
