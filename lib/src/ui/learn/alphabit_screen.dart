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
        elevation: 0,
        leadingWidth: 120,
        backgroundColor: AppTheme.dadada,
        leading: Container(
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/chevronLeft.svg",
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Back",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: Color(0xFF3A3A3C),
                ),
              ),
            ],
          ),
          padding: EdgeInsets.only(left: 16),
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
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              top: 40,
              right: 46,
              left: 46,
              bottom: 40,
            ),
            height: 165,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              color: AppTheme.dadada,
            ),
            child: Center(
              child: Text(
                "Start learning Arabic with AI technology",
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
              child: ListView(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: letters.length,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.only(top: 16, left: 22, right: 22),
                      padding: EdgeInsets.all(14),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFE2E2E2),
                      ),
                      height: 90,
                      child: Column(
                        children: [
                          Row(
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
                                  children: [
                                    Text(
                                      letters[index].name,
                                      style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17,
                                        letterSpacing: 0.2,
                                        color: AppTheme.black,
                                      ),
                                    ),
                                    Row(children: [
                                      Text(
                                        letters[index].part + "/",
                                        style: TextStyle(
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          letterSpacing: 0.2,
                                          color: Color(0xFF939393),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        letters[index].exercise,
                                        style: TextStyle(
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          letterSpacing: 0.2,
                                          color: Color(0xFF939393),
                                        ),
                                      ),
                                    ]),
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
                              )
                            ],
                          ),
                        ],
                      ));
                },
              ),
            ],
          )),
        ],
      ),
    );
  }
}
