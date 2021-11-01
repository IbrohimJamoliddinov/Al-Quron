import 'package:al_quran/src/models/language_model.dart';
import 'package:al_quran/src/models/remove_language.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:al_quran/src/widgets/text_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BottomDialog {
  static void showSettingsDialog(BuildContext context) {
    double _currentSliderValue = 50;
    Function(bool selected) selected;
    bool statusOne = true;
    bool statusTwo = true;
    bool statusThr = true;
    bool statusFou = true;
    CupertinoScaffold.showCupertinoModalBottomSheet(
      expand: true,
      context: context,
      backgroundColor: Colors.white,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return CupertinoScaffold(
              body: Builder(
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: Scaffold(
                      backgroundColor: Color(0xFFE5E5E5),
                      body: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 14),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 62,
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
                                      child: SvgPicture.asset(
                                          "assets/icons/close.svg")),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                TextSwitch(
                                  paddingBox: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 8,
                                  ),
                                  status: statusOne,
                                  boxBorderRadius: BorderRadius.circular(12),
                                  marginBox:
                                      EdgeInsets.symmetric(horizontal: 24),
                                  boxColor: Color(0xFFD2D2D2),
                                  text: "Tajweed",
                                  selected: (bool selected) {
                                    setState(() {
                                      statusOne = selected;
                                    });
                                  },
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 260,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 6),
                                      child: Text(
                                          "Tajweed rules will appear on ayahs of surahs while using it",
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: AppTheme.textColorGrey,
                                          )),
                                    ),
                                  ],
                                ),
                                TextSwitch(
                                  paddingBox: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 8,
                                  ),
                                  status: statusTwo,
                                  boxBorderRadius: BorderRadius.circular(12),
                                  marginBox: EdgeInsets.only(
                                      left: 24, right: 24, top: 16),
                                  boxColor: Color(0xFFD2D2D2),
                                  text: "Tajweed panel",
                                  selected: (bool selected) {
                                    setState(() {
                                      statusTwo = selected;
                                    });
                                  },
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width -
                                          48,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 6),
                                      child: Text(
                                          "Tajweed rules guide will appear on fixed panel",
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: AppTheme.textColorGrey,
                                          )),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: MediaQuery.of(context).size.width - 48,
                                  margin: EdgeInsets.only(
                                      left: 24, right: 24, top: 16),
                                  color: Color(0xFFDBDBDB),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextSwitch(
                                  paddingBox: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 8,
                                  ),
                                  status: statusThr,
                                  boxBorderRadius: BorderRadius.circular(12),
                                  marginBox:
                                      EdgeInsets.symmetric(horizontal: 24),
                                  boxColor: Color(0xFFD2D2D2),
                                  text: "Next and prev ayah by ayah",
                                  selected: (bool selected) {
                                    setState(() {
                                      statusThr = selected;
                                    });
                                  },
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 260,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 6),
                                      child: Text(
                                          "When next or previous button pressed it will go ayah by ayah",
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: AppTheme.textColorGrey,
                                          )),
                                    ),
                                  ],
                                ),
                                TextSwitch(
                                  paddingBox: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 8,
                                  ),
                                  status: statusFou,
                                  boxBorderRadius: BorderRadius.circular(12),
                                  marginBox: EdgeInsets.only(
                                      left: 24, right: 24, top: 16),
                                  boxColor: Color(0xFFD2D2D2),
                                  text: "Stop end of the surah",
                                  selected: (bool selected) {
                                    setState(() {
                                      statusFou = selected;
                                    });
                                  },
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width -
                                          48,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 6),
                                      child: Text(
                                          "When surah ends track stops also",
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: AppTheme.textColorGrey,
                                          )),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: MediaQuery.of(context).size.width - 48,
                                  margin: EdgeInsets.only(
                                      left: 24, right: 24, top: 16),
                                  color: Color(0xFFDBDBDB),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 24),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD2D2D2),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      activeTrackColor: Colors.green[300],
                                      inactiveTrackColor: Colors.grey[100],
                                      trackShape: RectangularSliderTrackShape(),
                                      trackHeight: 4.0,
                                      thumbColor: Colors.white,
                                      thumbShape: RoundSliderThumbShape(
                                          enabledThumbRadius: 12.0),
                                      overlayColor:
                                          Color(0xFF4CD42A).withAlpha(32),
                                      overlayShape: RoundSliderOverlayShape(
                                          overlayRadius: 28.0),
                                    ),
                                    child: Slider(
                                      value: _currentSliderValue,
                                      min: 0,
                                      max: 100,
                                      divisions: 7,
                                      label: _currentSliderValue
                                          .round()
                                          .toString(),
                                      onChanged: (double value) {
                                        setState(() {
                                          _currentSliderValue = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print("object");
                                    showSettingLanguage(context);
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width - 48,
                                    margin: EdgeInsets.only(
                                        left: 24,
                                        right: 24,
                                        top: 14,
                                        bottom: 16),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDFDFDF),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    padding:
                                        EdgeInsets.only(left: 18, bottom: 12),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 68),
                                        Row(
                                          children: [
                                            Text(
                                              "Mehribon va rahmli Alloh nomi ila boshlayman",
                                              maxLines: 2,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.2,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }

  static void showSettingLanguage(BuildContext context) {
    List<LanguageModel> data = [
      LanguageModel(
        language: "Russian",
        name: "Hasan Efendi Nahi",
      ),
      LanguageModel(
        language: "Uzbek",
        name: "Hasan Efendi Nahi",
      ),
      LanguageModel(
        language: "Engilish",
        name: "Hasan Efendi Nahi",
      ),
    ];

    List<RemoveLanguage> dataRemove = [
      RemoveLanguage(
        language: "Uzbek",
        name: "Hasan Efendi Nahi",
      ),
      RemoveLanguage(
        language: "nemis",
        name: "Hasan Efendi Nahi",
      ),RemoveLanguage(
        language: "tojik",
        name: "Hasan Efendi Nahi",
      ),
      RemoveLanguage(
        language: "fransuz",
        name: "Hasan Efendi Nahi",
      )
    ];

    int _selectedDelete = 1;
    int _selectedIndex = 1;
    bool status = true;
    CupertinoScaffold.showCupertinoModalBottomSheet(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return CupertinoScaffold(
              body: Builder(
                builder: (context) {
                  return CupertinoPageScaffold(
                    backgroundColor: Colors.white,
                    child: Scaffold(
                      backgroundColor: Color(0xFFDCDCDC),
                      body: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 14),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 62,
                                ),
                                Expanded(
                                  child: Text(
                                    "Language setting",
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
                                      child: SvgPicture.asset(
                                          "assets/icons/close.svg")),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 24.0, right: 24, bottom: 20),
                              child: Container(
                                height: 40,
                                width: 300,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xFFEBEBEB),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Icon(
                                      Icons.search,
                                      size: 24,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      width: 120,
                                      child: TextField(
                                        autofocus: false,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          // focusedBorder: InputBorder.none,
                                          // enabledBorder: InputBorder.none,
                                          // errorBorder: InputBorder.none,
                                          // disabledBorder: InputBorder.none,
                                          hintText: "Search reciters...",
                                          hintStyle: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            letterSpacing: -0.41,
                                            color: Color(0xFF808078),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                Container(
                                  height: 100,
                                  margin: EdgeInsets.only(
                                      left: 24, right: 24, top: 20),
                                  padding: EdgeInsets.only(
                                      left: 16, top: 12, right: 16, bottom: 10),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD2D2D2),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 32,
                                            height: 32,
                                            margin: EdgeInsets.only(right: 10),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              color: Color(0xFFC0C0C0),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Quran in Arabic",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 0.2,
                                                  fontFamily:
                                                      AppTheme.fontPoppins,
                                                  color: Color(0xFF3D3D3D),
                                                ),
                                              ),
                                              Text(
                                                "Default",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 0.2,
                                                  fontFamily:
                                                      AppTheme.fontPoppins,
                                                  color: Color(0xFF989898),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Translation",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Color(0xFF3D3D3D),
                                              letterSpacing: 0.2,
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 52,
                                            height: 32,
                                            child: FlutterSwitch(
                                              width: 52,
                                              height: 32,
                                              toggleSize: 27.0,
                                              value: status,
                                              borderRadius: 16.0,
                                              activeColor: Colors.green,
                                              onToggle: (value) {},
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  width: MediaQuery.of(context).size.width - 48,
                                  margin: EdgeInsets.only(
                                      left: 24, right: 24, top: 20),
                                  color: Color(0xFFA7A7A7),
                                ),
                                Container(
                                  height: 172,
                                  margin: EdgeInsets.only(
                                      left: 24, right: 24, top: 20),
                                  padding: EdgeInsets.only(
                                      left: 16, top: 12, right: 16, bottom: 10),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD2D2D2),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: data.length,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _selectedIndex = index;
                                          });
                                        },
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 32,
                                              height: 32,
                                              margin:
                                                  EdgeInsets.only(right: 10),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                color: Color(0xFFC0C0C0),
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    data[index].language,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing: 0.2,
                                                      fontFamily:
                                                          AppTheme.fontPoppins,
                                                      color: Color(0xFF3D3D3D),
                                                    ),
                                                  ),
                                                  Text(
                                                    data[index].name,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing: 0.2,
                                                      fontFamily:
                                                          AppTheme.fontPoppins,
                                                      color: Color(0xFF989898),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            _selectedIndex == index
                                                ? SvgPicture.asset(
                                                    "assets/icons/checkmark.svg",
                                                  )
                                                : Container(),
                                            SizedBox(width: 8,),
                                            SvgPicture.asset(
                                              "assets/icons/trash.svg",
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Container(
                                  height: 172,
                                  margin: EdgeInsets.only(
                                      left: 24, right: 24, top: 20),
                                  padding: EdgeInsets.only(
                                      left: 16, top: 12, right: 16, bottom: 10),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD2D2D2),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: data.length,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _selectedDelete = index;
                                          });
                                        },
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 32,
                                              height: 32,
                                              margin:
                                                  EdgeInsets.only(right: 10),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                color: Color(0xFFC0C0C0),
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    dataRemove[index].language,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing: 0.2,
                                                      fontFamily:
                                                          AppTheme.fontPoppins,
                                                      color: Color(0xFF3D3D3D),
                                                    ),
                                                  ),
                                                  Text(
                                                    dataRemove[index].name,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing: 0.2,
                                                      fontFamily:
                                                          AppTheme.fontPoppins,
                                                      color: Color(0xFF989898),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SvgPicture.asset(
                                              "assets/icons/dowloud.svg",
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          });
        });
  }
}
