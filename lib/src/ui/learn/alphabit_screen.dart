import 'package:al_quran/src/models/letters_model.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AlphabitScreen extends StatefulWidget {
  @override
  _AlphabitScreenState createState() => _AlphabitScreenState();
}

class _AlphabitScreenState extends State<AlphabitScreen> {
  List<LettersModel> letters = [
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
    LettersModel(
      name: "Letter Alif",
      part: "3 part",
      exercise: "18 exercise",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Alphabit",
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: AppTheme.black,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 16),
            child: SvgPicture.asset(
              "assets/icons/danger_circle.svg",
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 40,
              right: 46,
              left: 46,
              bottom: 40,
            ),
            height: 165,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(48),
                bottomRight: Radius.circular(48),
              ),
              color: Color(0xFFDCDCDC),
            ),
            child: Center(
              child: Text(
                "Start learning Arabic with AI technology",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                  color: AppTheme.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: letters.length,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    margin: EdgeInsets.only(left: 22, right: 22, top: 30),
                    child: Text(
                      "Arabic letters",
                      style: TextStyle(
                        fontFamily: AppTheme.fontPoppins,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        height: 26 / 22,
                        color: Color(0xFF242424),
                      ),
                    ),
                  );
                }
                return Container(
                  margin: EdgeInsets.only(top: 16, left: 22, right: 22),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 14,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFDCDCDC),
                  ),
                  height: 90,
                  child: Row(
                    children: [
                      Container(
                        width: 61,
                        height: 61,
                        decoration: BoxDecoration(
                          color: Color(0xFFA1A1A1),
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              letters[index].name,
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                height: 1.18,
                                letterSpacing: 0.2,
                                color: AppTheme.black,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              letters[index].part +
                                  " / " +
                                  letters[index].exercise,
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                letterSpacing: 0.2,
                                color: Color(0xFF939393),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFA1A1A1),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
