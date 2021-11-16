import 'package:al_quran/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShahadaScreen extends StatefulWidget {
  @override
  _ShahadaScreenState createState() => _ShahadaScreenState();
}

class _ShahadaScreenState extends State<ShahadaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
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
          "Shahada",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 80),
            child: Image.asset(
              "assets/images/sansTitre.png",
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 48,
            margin: EdgeInsets.only(left: 24, right: 24),
            decoration: BoxDecoration(
              color: Color(0xFFF1F1F1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                SizedBox(height: 12),
                Image.asset("assets/images/imageText.png"),
                SizedBox(height: 12),
                Text(
                  "[Ashadu an la ilaha illa illa-ilah, wa ashadu anna muhammadan rasul ullah]",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppTheme.dark,
                    fontSize: 14,
                    letterSpacing: -0.3,
                    fontFamily: AppTheme.fontPoppins,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 6),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 48,
            margin: EdgeInsets.only(left: 24, right: 24, top: 16),
            decoration: BoxDecoration(
              color: Color(0xFFF1F1F1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                SizedBox(height: 8),
                Text(
                  "There is no God but Allah, and Muhammad is his messenger",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppTheme.dark,
                    fontSize: 14,
                    letterSpacing: -0.3,
                    fontFamily: AppTheme.fontPoppins,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 6),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
