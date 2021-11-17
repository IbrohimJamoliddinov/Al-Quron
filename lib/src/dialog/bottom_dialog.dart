import 'package:al_quran/src/models/language_model.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:al_quran/src/widgets/text_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BottomDialog {
  static void showSettingsDialog(BuildContext context) {
    double _currentSliderValue = 50;
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
            return Scaffold(
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
                            child: SvgPicture.asset("assets/icons/close.svg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
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
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 6,
                          ),
                          child: Text(
                            "Tajweed rules will appear on ayahs of surahs while using it",
                            style: TextStyle(
                              color: AppTheme.textColorGrey,
                            ),
                          ),
                        ),
                        TextSwitch(
                          paddingBox: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          status: statusTwo,
                          boxBorderRadius: BorderRadius.circular(12),
                          marginBox:
                              EdgeInsets.only(left: 24, right: 24, top: 10),
                          boxColor: Color(0xFFD2D2D2),
                          text: "Tajweed panel",
                          selected: (bool selected) {
                            setState(() {
                              statusTwo = selected;
                            });
                          },
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                          child: Text(
                            "Tajweed rules guide will appear on fixed panel",
                            style: TextStyle(
                              color: AppTheme.textColorGrey,
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(left: 24, right: 24, top: 10),
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
                          marginBox: EdgeInsets.symmetric(horizontal: 24),
                          boxColor: Color(0xFFD2D2D2),
                          text: "Next and prev ayah by ayah",
                          selected: (bool selected) {
                            setState(() {
                              statusThr = selected;
                            });
                          },
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 6,
                          ),
                          child: Text(
                            "When next or previous button pressed it will go ayah by ayah",
                            style: TextStyle(
                              color: AppTheme.textColorGrey,
                            ),
                          ),
                        ),
                        TextSwitch(
                          paddingBox: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          status: statusFou,
                          boxBorderRadius: BorderRadius.circular(12),
                          marginBox:
                              EdgeInsets.only(left: 24, right: 24, top: 10),
                          boxColor: Color(0xFFD2D2D2),
                          text: "Stop end of the surah",
                          selected: (bool selected) {
                            setState(() {
                              statusFou = selected;
                            });
                          },
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                          child: Text(
                            "When surah ends track stops also",
                            style: TextStyle(
                              color: AppTheme.textColorGrey,
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(
                            left: 24,
                            right: 24,
                            top: 10,
                            bottom: 14,
                          ),
                          color: Color(0xFFDBDBDB),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                          child: Text(
                            "Text size",
                            style: TextStyle(
                              color: AppTheme.textColorGrey,
                            ),
                          ),
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
                              overlayColor: Color(0xFF4CD42A).withAlpha(32),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 28.0),
                            ),
                            child: Slider(
                              value: _currentSliderValue,
                              min: 0,
                              max: 100,
                              divisions: 10,
                              label: _currentSliderValue.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  _currentSliderValue = value;
                                });
                              },
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 24,
                            right: 24,
                            top: 14,
                            bottom: 16,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFDFDFDF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.only(
                            left: 18,
                            right: 18,
                            bottom: 12,
                            top: 31,
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  "ِميِحَّرلا ِنٰـَمْحَّرلا ِهَّللا ِمْسِب",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 26,
                                    height: 0.54,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.2,
                                  ),
                                ),
                                alignment: Alignment.centerRight,
                              ),
                              SizedBox(height: 24),
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
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  static void showSettingLanguage(BuildContext context) {
    List<LanguageModel> download = [
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

    List<LanguageModel> language = [
      LanguageModel(
        language: "Uzbek",
        name: "Hasan Efendi Nahi",
      ),
      LanguageModel(
        language: "nemis",
        name: "Hasan Efendi Nahi",
      ),
      LanguageModel(
        language: "tojik",
        name: "Hasan Efendi Nahi",
      ),
      LanguageModel(
        language: "fransuz",
        name: "Hasan Efendi Nahi",
      )
    ];

    int _selectedIndex = 1;
    bool isTranslate = true;
    CupertinoScaffold.showCupertinoModalBottomSheet(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Scaffold(
              backgroundColor: Color(0xFFF6F6F6),
              body: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 16),
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
                            child: SvgPicture.asset("assets/icons/close.svg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.only(left: 24.0, right: 24),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFEBEBEB),
                        border: Border.all(
                          color: Color(0xFFDFDFDF),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset(
                            "assets/icons/search.svg",
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: TextField(
                              autofocus: false,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
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
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 24,
                            right: 24,
                            top: 20,
                          ),
                          padding: EdgeInsets.only(
                            left: 16,
                            top: 12,
                            bottom: 7,
                          ),
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
                                      borderRadius: BorderRadius.circular(16),
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
                                          height: 1.2,
                                          fontFamily: AppTheme.fontPoppins,
                                          color: Color(0xFF3D3D3D),
                                        ),
                                      ),
                                      Text(
                                        "Default",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.2,
                                          fontFamily: AppTheme.fontPoppins,
                                          color: Color(0xFF989898),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 6),
                                height: 1,
                                color: Color(0xFFDBDBDB),
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
                                  GestureDetector(
                                    child: CupertinoSwitch(
                                      value: isTranslate,
                                      onChanged: (bool value) {
                                        setState(() {
                                          isTranslate = value;
                                        });
                                      },
                                    ),
                                    onTap: () {
                                      setState(() {
                                        isTranslate = !isTranslate;
                                      });
                                    },
                                  ),
                                  SizedBox(width: 12),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(
                            left: 24,
                            right: 24,
                            top: 20,
                            bottom: 20,
                          ),
                          color: Color(0xFFA7A7A7).withOpacity(0.5),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 24, right: 24),
                          child: Text(
                            "Downloaded",
                            style: TextStyle(
                              fontFamily: AppTheme.fontPoppins,
                              fontSize: 15,
                              color: Color(0xFF717171),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 24, right: 24, top: 6),
                          padding: EdgeInsets.only(
                            left: 16,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFD2D2D2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: download.length,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedIndex = index;
                                      });
                                    },
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Row(
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
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  download[index].language,
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
                                                  download[index].name,
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
                                            ),
                                          ),
                                          _selectedIndex == index
                                              ? SvgPicture.asset(
                                                  "assets/icons/checkmark.svg",
                                                )
                                              : Container(),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          SvgPicture.asset(
                                            "assets/icons/trash.svg",
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                        ],
                                      ),
                                      padding: EdgeInsets.only(
                                        top: 11,
                                        bottom: 7,
                                      ),
                                    ),
                                  ),
                                  index != download.length - 1
                                      ? Container(
                                          height: 1,
                                          color: Color(0xFFDBDBDB),
                                        )
                                      : Container()
                                ],
                              );
                            },
                          ),
                        ),
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(
                            left: 24,
                            right: 24,
                            top: 20,
                            bottom: 20,
                          ),
                          color: Color(0xFFA7A7A7).withOpacity(0.5),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 24, right: 24),
                          child: Text(
                            "Languages",
                            style: TextStyle(
                              fontFamily: AppTheme.fontPoppins,
                              fontSize: 15,
                              color: Color(0xFF717171),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 24, right: 24, top: 6),
                          padding: EdgeInsets.only(
                            left: 16,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFD2D2D2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: language.length,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Container(
                                    color: Colors.transparent,
                                    child: Row(
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
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                language[index].language,
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
                                                language[index].name,
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
                                          ),
                                        ),
                                        SvgPicture.asset(
                                          "assets/icons/cloud.svg",
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                      ],
                                    ),
                                    padding: EdgeInsets.only(
                                      top: 11,
                                      bottom: 7,
                                    ),
                                  ),
                                  index != language.length - 1
                                      ? Container(
                                          height: 1,
                                          color: Color(0xFFDBDBDB),
                                        )
                                      : Container()
                                ],
                              );
                              ;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  static void showRecitationDialog(BuildContext context) {
    double _currentSliderValue = 50;
    bool autoScroll = true;
    bool keepGoing = true;
    CupertinoScaffold.showCupertinoModalBottomSheet(
      expand: true,
      context: context,
      backgroundColor: Colors.white,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Scaffold(
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
                            "Recitation setting",
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
                            child: SvgPicture.asset("assets/icons/close.svg"),
                          ),
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
                          status: autoScroll,
                          boxBorderRadius: BorderRadius.circular(12),
                          marginBox: EdgeInsets.symmetric(horizontal: 24),
                          boxColor: Color(0xFFD2D2D2),
                          text: "Auto scroll",
                          selected: (bool selected) {
                            setState(() {
                              autoScroll = selected;
                            });
                          },
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 6,
                          ),
                          child: Text(
                            "Tajweed rules will appear on ayahs of surahs while using it",
                            style: TextStyle(
                              color: AppTheme.textColorGrey,
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(left: 24, right: 24, top: 10),
                          color: Color(0xFFDBDBDB),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 24,
                            right: 24,
                            top: 20,
                            bottom: 6,
                          ),
                          child: Text(
                            "Speed",
                            style: TextStyle(
                              fontFamily: AppTheme.fontPoppins,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xFF717171),
                            ),
                          ),
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
                              overlayColor: Color(0xFF4CD42A).withAlpha(32),
                              overlayShape: RoundSliderOverlayShape(
                                overlayRadius: 28.0,
                              ),
                            ),
                            child: Slider(
                              value: _currentSliderValue,
                              min: 0,
                              max: 100,
                              divisions: 10,
                              label: _currentSliderValue.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  _currentSliderValue = value;
                                });
                              },
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(left: 24, right: 24, top: 20),
                          color: Color(0xFFDBDBDB),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 24,
                            right: 24,
                            top: 20,
                            bottom: 6,
                          ),
                          child: Text(
                            "Range of ayah",
                            style: TextStyle(
                              fontFamily: AppTheme.fontPoppins,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xFF4E4E4E),
                            ),
                          ),
                        ),
                        Container(
                          height: 48,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          decoration: BoxDecoration(
                            color: Color(0xFFF0F0F0),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFE1E1E1),
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Enter starting verse of ayah",
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      letterSpacing: -0.41,
                                      color: Color(0xFFA9A9A9),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 16,
                                ),
                                width: 1,
                                color: Color(0xFFDBDBDB),
                              ),
                              SvgPicture.asset("assets/icons/flag.svg"),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 48,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          decoration: BoxDecoration(
                            color: Color(0xFFF0F0F0),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFE1E1E1),
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Enter ending verse of ayah",
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      letterSpacing: -0.41,
                                      color: Color(0xFFA9A9A9),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 16,
                                ),
                                width: 1,
                                color: Color(0xFFDBDBDB),
                              ),
                              SvgPicture.asset("assets/icons/remove_flag.svg"),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 24,
                            right: 24,
                            top: 20,
                            bottom: 6,
                          ),
                          child: Text(
                            "Repeatation of each ayah",
                            style: TextStyle(
                              fontFamily: AppTheme.fontPoppins,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xFF4E4E4E),
                            ),
                          ),
                        ),
                        Container(
                          height: 48,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          decoration: BoxDecoration(
                            color: Color(0xFFF0F0F0),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFE1E1E1),
                            ),
                          ),
                          child: TextField(
                            autofocus: false,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: "Enter number of repeatations",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                letterSpacing: -0.41,
                                color: Color(0xFFA9A9A9),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 6,
                          ),
                          child: Text(
                            "Here you enter number of tepeatation that repeat repeat rang of ayahs",
                            style: TextStyle(
                              color: AppTheme.textColorGrey,
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(left: 24, right: 24, top: 16),
                          color: Color(0xFFDBDBDB),
                        ),
                        TextSwitch(
                          paddingBox: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          status: keepGoing,
                          boxBorderRadius: BorderRadius.circular(12),
                          marginBox: EdgeInsets.symmetric(horizontal: 24),
                          boxColor: Color(0xFFD2D2D2),
                          text: "Keep going",
                          selected: (bool selected) {
                            setState(() {
                              keepGoing = selected;
                            });
                          },
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 6,
                          ),
                          child: Text(
                            "Keep with same settings to the next range of the ayahs",
                            style: TextStyle(
                              color: AppTheme.textColorGrey,
                            ),
                          ),
                        ),
                        SizedBox(height: 18),
                      ],
                    ),
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
