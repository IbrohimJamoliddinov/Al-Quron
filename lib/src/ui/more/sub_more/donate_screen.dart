import 'package:al_quran/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DonateScreen extends StatefulWidget {
  @override
  _DonateScreenState createState() => _DonateScreenState();
}

class _DonateScreenState extends State<DonateScreen> {
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
          "Donate",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 42),
            Text(
              "Hello World",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: AppTheme.dark,
                fontSize: 14,
                fontFamily: AppTheme.fontPoppins,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World ",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: AppTheme.dark,
                fontSize: 11,
                fontFamily: AppTheme.fontPoppins,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Hello World",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: AppTheme.dark,
                fontSize: 14,
                fontFamily: AppTheme.fontPoppins,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World ",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: AppTheme.dark,
                fontSize: 11,
                fontFamily: AppTheme.fontPoppins,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Hello World",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: AppTheme.dark,
                fontSize: 14,
                fontFamily: AppTheme.fontPoppins,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World ",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: AppTheme.dark,
                fontSize: 11,
                fontFamily: AppTheme.fontPoppins,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
