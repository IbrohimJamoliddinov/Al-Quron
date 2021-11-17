import 'package:al_quran/src/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CenterDialog {
  static void showTimerDialog(
    BuildContext context,
    Function(int time) onSelected,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Container(
            height: 32,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      "assets/icons/close.svg",
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
                Center(
                  child: Text("Timer"),
                ),
              ],
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                onSelected(5);
                Navigator.pop(context);
              },
              child: Container(
                height: 48,
                color: Colors.transparent,
                child: Center(
                  child: Text(
                    "5 min",
                    style: TextStyle(
                      fontFamily: AppTheme.fontPoppins,
                      fontSize: 17,
                      height: 1.3,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF797979),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onSelected(10);
                Navigator.pop(context);
              },
              child: Container(
                height: 48,
                color: Colors.transparent,
                child: Center(
                  child: Text(
                    "10 min",
                    style: TextStyle(
                      fontFamily: AppTheme.fontPoppins,
                      fontSize: 17,
                      height: 1.3,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF797979),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onSelected(15);
                Navigator.pop(context);
              },
              child: Container(
                height: 48,
                color: Colors.transparent,
                child: Center(
                  child: Text(
                    "15 min",
                    style: TextStyle(
                      fontFamily: AppTheme.fontPoppins,
                      fontSize: 17,
                      height: 1.3,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF797979),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onSelected(30);
                Navigator.pop(context);
              },
              child: Container(
                height: 48,
                color: Colors.transparent,
                child: Center(
                  child: Text(
                    "30 min",
                    style: TextStyle(
                      fontFamily: AppTheme.fontPoppins,
                      fontSize: 17,
                      height: 1.3,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF797979),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onSelected(60);
                Navigator.pop(context);
              },
              child: Container(
                height: 48,
                color: Colors.transparent,
                child: Center(
                  child: Text(
                    "60 min",
                    style: TextStyle(
                      fontFamily: AppTheme.fontPoppins,
                      fontSize: 17,
                      height: 1.3,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF797979),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onSelected(-1);
                Navigator.pop(context);
              },
              child: Container(
                height: 48,
                color: Colors.transparent,
                child: Center(
                  child: Text(
                    "Till the end",
                    style: TextStyle(
                      fontFamily: AppTheme.fontPoppins,
                      fontSize: 17,
                      height: 1.3,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF797979),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onSelected(0);
                Navigator.pop(context);
              },
              child: Container(
                height: 48,
                color: Colors.transparent,
                child: Center(
                  child: Text(
                    "Enable",
                    style: TextStyle(
                      fontFamily: AppTheme.fontPoppins,
                      fontSize: 17,
                      height: 1.3,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF797979),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
