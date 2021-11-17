import 'package:al_quran/src/ui/learn/alphabit_screen.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LearnScreen extends StatefulWidget {
  @override
  _LearnScreenState createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.dadada,
        centerTitle: true,
        title: Text(
          "Learn",
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: AppTheme.black,
          ),
        ),
        actions: [
          SvgPicture.asset(
            "assets/icons/danger_circle.svg",
          ),
          SizedBox(width: 16)
        ],
      ),
      body: ListView.builder(
        itemCount: 100,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 22,
                right: 22,
              ),
              child: Text(
                "Muallim sani",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Color(0xFF242424),
                ),
              ),
            );
          } else {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) {
                      return AlphabitScreen();
                    },
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(
                  top: 16,
                  left: 24,
                  right: 24,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(
                    0xFFE2E2E2,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Arabic alphabit",
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  letterSpacing: 0.2,
                                  color: AppTheme.black,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Total: 32 lessons",
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  letterSpacing: 0.2,
                                  color: Color(0xFF939393),
                                ),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ),
                        Container(
                          width: 147,
                          height: 77,
                          decoration: BoxDecoration(
                            color: Color(0xFFA1A1A1),
                            borderRadius: BorderRadius.circular(11),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    LinearProgressIndicator(
                      minHeight: 8,
                      backgroundColor: Color(0xFFD7D7D7),
                      valueColor: AlwaysStoppedAnimation(Color(0xFF525252)),
                      value: 0.4,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "4 lesson",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              letterSpacing: 0.2,
                              color: Color(0xFF474747),
                            ),
                          ),
                        ),
                        Text(
                          "32 lesson",
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            letterSpacing: 0.2,
                            color: Color(0xFF939393),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
