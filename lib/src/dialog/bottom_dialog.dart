import 'package:al_quran/src/utils/app_theme.dart';
import 'package:al_quran/src/widgets/text_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BottomDialog {
  static void showSettingsDialog(BuildContext context) {
    bool statusOne = false;
    bool statusTwo = false;
    CupertinoScaffold.showCupertinoModalBottomSheet(
      expand: true,
      context: context,
      backgroundColor: Colors.white,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Scaffold(
              body: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 64,
                      ),
                      Expanded(
                        child: Text(
                          "Quran setting",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            decoration: TextDecoration.none,
                            fontFamily: AppTheme.fontPoppins,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.41,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 16),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset("assets/icons/close.svg")),
                      ),
                    ],
                  ),
                  TextSwitch(
                    paddingBox: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    status: statusOne,
                    boxBorderRadius: BorderRadius.circular(12),
                    marginBox: EdgeInsets.symmetric(horizontal: 24),
                    boxColor: Color(0xFFD2D2D2),
                    text: "Tajweed",
                    selected: (bool selected) {
                      setState(() {
                        statusOne = selected;
                      });
                    },
                  ),
                  TextSwitch(
                    paddingBox: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    status: statusTwo,
                    boxBorderRadius: BorderRadius.circular(12),
                    marginBox: EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    boxColor: Color(0xFFD2D2D2),
                    text: "Tajweed",
                    selected: (bool selected) {
                      setState(() {
                        statusTwo = selected;
                      });
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
