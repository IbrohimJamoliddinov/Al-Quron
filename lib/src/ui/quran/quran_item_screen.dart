import 'package:al_quran/src/dialog/bottom_dialog.dart';
import 'package:al_quran/src/dialog/center_dilaog.dart';
import 'package:al_quran/src/models/quran_item_model.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class QuranItemScreen extends StatefulWidget {
  final String title;

  QuranItemScreen({
    required this.title,
  });

  @override
  _QuranItemScreenState createState() => _QuranItemScreenState();
}

class _QuranItemScreenState extends State<QuranItemScreen> {
  int _selectedIndex = -1;
  int timerTime = 15;

  List<QuranItemModel> data = [
    QuranItemModel(
      orginal: "ِميِحَّرلا ِنٰـَمْحَّرلا ِهَّللا ِمْسِب",
      translate: "Roxman va Rohim Allohning ismi ila (boshlayman)",
    ),
    QuranItemModel(
      orginal: "َنيِمَلاَعْلا ِّبَر ِهَّلِل ُدْمَحْلا",
      translate: "Hamd olamlarning Robbi - Allohgadir",
    ),
    QuranItemModel(
      orginal: "َنيِمَلاَعْلا ِّبَر ِهَّلِل ُدْمَحْلا",
      translate: "U Rohman va Rohimdir",
    ),
    QuranItemModel(
      orginal: "ِنيِّدلا ِمْوَي ِكِلاَم",
      translate: "Jazo-mukofot kuning egasidir",
    ),
    QuranItemModel(
      orginal: "ُنيِعَتْسَن َكاَّيِإَو ُدُبْعَن َكاَّيِإ",
      translate:
          "Faqat Sengagina ibodat qilamiz va faqat Sendangina yordam so’raymiz",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoScaffold(
      body: Builder(
        builder: (context) {
          return CupertinoPageScaffold(
            backgroundColor: Colors.white,
            child: Scaffold(
              backgroundColor: Color(0xFFF6F6F6),
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
                  widget.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  GestureDetector(
                    onTap: () {
                      BottomDialog.showSettingLanguage(context);
                    },
                    child: Container(
                      height: 28,
                      width: 28,
                      margin: EdgeInsets.only(
                        right: 17,
                      ),
                      child: SvgPicture.asset("assets/icons/global_icon.svg"),
                    ),
                  ),
                ],
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {
                            if (index != _selectedIndex) {
                              setState(() {
                                _selectedIndex = index;
                              });
                            }
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 27,
                                      width: 27,
                                      margin: EdgeInsets.only(
                                        left: 16,
                                        top: 24,
                                        right: 12,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFC4C4C4),
                                        borderRadius: BorderRadius.circular(27),
                                      ),
                                      child: Center(
                                        child: Text(
                                          (index + 1).toString(),
                                          style: TextStyle(
                                            fontFamily: AppTheme.fontPoppins,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(
                                          left: 12,
                                          right: 12,
                                          top: 32,
                                          bottom: 16,
                                        ),
                                        margin: EdgeInsets.only(top: 8),
                                        decoration: BoxDecoration(
                                          color: _selectedIndex == index
                                              ? Color(0xFFE7E7E7)
                                              : Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                bottom: 32,
                                              ),
                                              child: Text(
                                                data[index].orginal,
                                                textAlign: TextAlign.end,
                                                style: TextStyle(
                                                  fontFamily:
                                                      AppTheme.fontPoppins,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 32,
                                                  height: 0.56,
                                                ),
                                              ),
                                              width: double.infinity,
                                              alignment: Alignment.centerRight,
                                            ),
                                            Text(
                                              data[index].translate,
                                              style: TextStyle(
                                                fontFamily:
                                                    AppTheme.fontPoppins,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 15,
                                                height: 1.2,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                top: 5,
                                              ),
                                              height: 6,
                                              width: double.infinity,
                                              alignment: Alignment.centerRight,
                                              child: PopupMenuButton(
                                                padding: EdgeInsets.zero,
                                                color: Colors.transparent,
                                                elevation: 0,
                                                icon: SvgPicture.asset(
                                                  "assets/icons/more_horizontal.svg",
                                                ),
                                                itemBuilder:
                                                    (BuildContext context) {
                                                  return [
                                                    PopupMenuItem(
                                                      height: 195,
                                                      padding: EdgeInsets.zero,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(13),
                                                        ),
                                                        width: 215,
                                                        height: 195,
                                                        child: Column(
                                                          children: [
                                                            GestureDetector(
                                                              onTap: () {},
                                                              child: Container(
                                                                height: 48,
                                                                color: Colors
                                                                    .transparent,
                                                                child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    SizedBox(
                                                                        width:
                                                                            16),
                                                                    Expanded(
                                                                      child: Text(
                                                                          "Play"),
                                                                    ),
                                                                    SizedBox(
                                                                        width:
                                                                            8),
                                                                    SvgPicture
                                                                        .asset(
                                                                      "assets/icons/popup_play.svg",
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                    SizedBox(
                                                                        width:
                                                                            16),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                color: Color(
                                                                        0xFF3C3C43)
                                                                    .withOpacity(
                                                                        0.16),
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {},
                                                              child: Container(
                                                                height: 48,
                                                                color: Colors
                                                                    .transparent,
                                                                child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    SizedBox(
                                                                        width:
                                                                            16),
                                                                    Expanded(
                                                                      child: Text(
                                                                          "Bookmark"),
                                                                    ),
                                                                    SizedBox(
                                                                        width:
                                                                            8),
                                                                    SvgPicture
                                                                        .asset(
                                                                      "assets/icons/popup_bookmark.svg",
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                    SizedBox(
                                                                        width:
                                                                            16),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                color: Color(
                                                                        0xFF3C3C43)
                                                                    .withOpacity(
                                                                        0.16),
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {},
                                                              child: Container(
                                                                height: 48,
                                                                color: Colors
                                                                    .transparent,
                                                                child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    SizedBox(
                                                                        width:
                                                                            16),
                                                                    Expanded(
                                                                      child: Text(
                                                                          "Share"),
                                                                    ),
                                                                    SizedBox(
                                                                        width:
                                                                            8),
                                                                    SvgPicture
                                                                        .asset(
                                                                      "assets/icons/popup_share.svg",
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                    SizedBox(
                                                                        width:
                                                                            16),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                color: Color(
                                                                        0xFF3C3C43)
                                                                    .withOpacity(
                                                                        0.16),
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {},
                                                              child: Container(
                                                                height: 48,
                                                                color: Colors
                                                                    .transparent,
                                                                child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    SizedBox(
                                                                        width:
                                                                            16),
                                                                    Expanded(
                                                                      child: Text(
                                                                          "Recitation options"),
                                                                    ),
                                                                    SizedBox(
                                                                        width:
                                                                            8),
                                                                    SvgPicture
                                                                        .asset(
                                                                      "assets/icons/popup_reload.svg",
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                    SizedBox(
                                                                        width:
                                                                            16),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ];
                                                },
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                  ],
                                ),
                                (_selectedIndex == 0 && index == 0)
                                    ? Container(
                                        height: 1,
                                      )
                                    : (_selectedIndex == index ||
                                            _selectedIndex == index + 1)
                                        ? Container(
                                            height: 1,
                                          )
                                        : Container(
                                            height: 1,
                                            margin: EdgeInsets.only(
                                              left: 63,
                                              right: 20,
                                            ),
                                            color: Color(0xFFCCCCCC),
                                          )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 186,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      color: Color(0xFFF6F6F6),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(
                            0,
                            -2,
                          ),
                          blurRadius: 7,
                          spreadRadius: 0,
                          color: Color.fromRGBO(0, 0, 0, 0.06),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 28,
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            children: [
                              Text("Qalqala"),
                              Spacer(),
                              Text("Iqlab"),
                              Spacer(),
                              Text("Idham"),
                              Spacer(),
                              Text("Ikhfa’a"),
                              Spacer(),
                              Text("Ghunna"),
                            ],
                          ),
                        ),
                        Container(
                          height: 58,
                          child: Row(
                            children: [
                              SizedBox(width: 19),
                              GestureDetector(
                                onTap: () {
                                  CenterDialog.showTimerDialog(
                                    context,
                                    (time) {
                                      setState(() {
                                        timerTime = time;
                                      });
                                    },
                                  );
                                },
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  color: Colors.transparent,
                                  child: Stack(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/player_timer.svg",
                                        height: 24,
                                        width: 24,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          height: 16,
                                          width: 16,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: Color(0xFFE1E1E1),
                                            border: Border.all(
                                              color: Color(0xFFF6F6F6),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              timerTime.toString(),
                                              style: TextStyle(
                                                fontSize: 9,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              GestureDetector(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  "assets/icons/player_repeat.svg",
                                ),
                              ),
                              SizedBox(width: 19),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
