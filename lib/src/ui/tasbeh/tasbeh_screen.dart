import 'package:al_quran/src/models/tasbeh_model.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TasbehScreen extends StatefulWidget {
  const TasbehScreen({Key? key}) : super(key: key);

  @override
  _TasbehScreenState createState() => _TasbehScreenState();
}

class _TasbehScreenState extends State<TasbehScreen> {
  List<TasbehModel> lists = [
    TasbehModel(amount: "CST", isSelected: false),
    TasbehModel(amount: "∞", isSelected: false),
    TasbehModel(amount: "1000", isSelected: false),
    TasbehModel(amount: "500", isSelected: false),
    TasbehModel(amount: "99", isSelected: false),
    TasbehModel(amount: "33", isSelected: true),
    TasbehModel(amount: "11", isSelected: false),
    TasbehModel(amount: "7", isSelected: false),
  ];
  int _selectedIndex = 5;
  bool isSelectedected = false;
  int count = 124;
  String count2 = "";
  bool isRight = true;
  bool isMute = true;

  Widget upBottom() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/icons/up.svg",
          color: Colors.black.withOpacity(0.6),
        ),
        SizedBox(
          height: 9,
        ),
        SvgPicture.asset("assets/icons/line.svg"),
        SizedBox(
          height: 9,
        ),
        SvgPicture.asset(
          "assets/icons/bottom.svg",
          color: Colors.black.withOpacity(0.6),
        ),
      ],
    );
  }

  Widget plus() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: () {
              setState(
                () {
                  count++;
                },
              );
            },
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFF7F7F7),
                    border: Border.all(
                      color: Color(0xFFECECEC),
                    ),
                    borderRadius: BorderRadius.circular(37),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.06),
                      )
                    ]),
                child: Container(
                  // constraints: BoxConstraints.expand(),
                  padding: EdgeInsets.symmetric(
                    vertical: 100,
                    horizontal: 80,
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/plus.svg",
                    width: 48,
                    height: 90,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget speaker() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isMute = !isMute;
        });
        setMute();
      },
      child: isMute
          ? Container(
              width: 58,
              height: 80,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Color(0xFFECECEC),
                  borderRadius: BorderRadius.circular(12)),
              child: SvgPicture.asset(
                "assets/icons/speaker_gray.svg",
                width: 18,
                height: 18,
              ),
            )
          : Container(
              width: 58,
              height: 80,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Color(0xFFECECEC),
                  borderRadius: BorderRadius.circular(12)),
              child: SvgPicture.asset(
                "assets/icons/speakerWave.svg",
                color: Colors.black.withOpacity(0.5),
                width: 18,
                height: 18,
              ),
            ),
    );
  }

  Widget refresh() {
    return GestureDetector(
      onTap: () {
        setState(() {
          count = 0;
        });
      },
      child: Container(
        width: 58,
        height: 80,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Color(0xFFECECEC), borderRadius: BorderRadius.circular(12)),
        child: SvgPicture.asset(
          "assets/icons/gobackward.svg",
          width: 18,
          height: 18,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getBool();
    getMute();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.dadada,
        title: Text(
          "Tasbeh",
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: AppTheme.black,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () async {
              setState(() {
                isRight = !isRight;
              });
              addBool();
            },
            child: Container(
              padding: EdgeInsets.only(
                right: 16,
              ),
              child: SvgPicture.asset(
                "assets/icons/repeat.svg",
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: AppTheme.backWhite,
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 173.0),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 20, right: 16),
                      alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFDCD4D4),
                          width: 1,
                        ),
                        color: Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Container(
                        width: 28,
                        height: 28,
                        margin: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Color(0xFFE3E3E3),
                          borderRadius: BorderRadius.circular(28),
                        ),
                        alignment: Alignment.bottomRight,
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/icons/play.svg",
                            width: 24,
                            height: 24,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            isRight
                ? Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 20, right: 22, left: 22),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(
                                      0xFF1A232E,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      count.toString(),
                                      style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 45,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              speaker(),
                              SizedBox(
                                width: 8,
                              ),
                              refresh(),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    //Vertical line
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 60,
                                          bottom: 60,
                                          right: 0,
                                          left: 4),
                                      width: 3,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFADADAD),
                                      ),
                                    ),

                                    //ListView.builder()
                                    Container(
                                      width: 150,
                                      // padding: EdgeInsets.symmetric(vertical: 24),
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount: lists.length,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                            onTap: () {
                                              setState(
                                                () {
                                                  _selectedIndex = index;
                                                  count = 0;
                                                },
                                              );
                                            },
                                            child: Row(
                                              children: [
                                                //circle
                                                Container(
                                                  width: 12,
                                                  height: 12,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    color:
                                                        _selectedIndex == index
                                                            ? Colors.blue
                                                            : Color(0xFF484848),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),

                                                //Numbers
                                                Container(
                                                  width: 54,
                                                  height: 36,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: _selectedIndex ==
                                                            index
                                                        ? Color(0xFFDEDEDE)
                                                        : Colors.transparent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                  ),
                                                  child: Text(
                                                    lists[index].amount,
                                                    style: TextStyle(
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      fontWeight:
                                                          _selectedIndex ==
                                                                  index
                                                              ? FontWeight.w700
                                                              : FontWeight.w500,
                                                      fontSize:
                                                          _selectedIndex ==
                                                                  index
                                                              ? 18
                                                              : 16,
                                                      color: Color(0xFF6C6C6C),
                                                    ),
                                                  ),
                                                ),

                                                //up-bottom
                                                Container(
                                                  child: _selectedIndex == index
                                                      ? upBottom()
                                                      : Container(),
                                                  height: 35,
                                                  width: 40,
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                plus(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                : Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        left: 22,
                        right: 22,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(
                                      0xFF1A232E,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      count.toString(),
                                      style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 45,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                plus(),
                                SizedBox(height: 27),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  speaker(),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  refresh(),
                                ],
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        //Vertical line
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 40, bottom: 75, right: 4),
                                          width: 3,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFADADAD),
                                          ),
                                        ),

                                        //ListView.builder()
                                        Container(
                                          width: 140,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 24),
                                          child: ListView.builder(
                                            itemCount: lists.length,
                                            itemBuilder: (context, index) {
                                              return GestureDetector(
                                                onTap: () {
                                                  setState(
                                                    () {
                                                      _selectedIndex = index;
                                                      count = 0;
                                                    },
                                                  );
                                                },
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 30,
                                                    ),
                                                    Container(
                                                      child: _selectedIndex ==
                                                              index
                                                          ? upBottom()
                                                          : Container(),
                                                      height: 35,
                                                      width: 40,
                                                    ),
                                                    Container(
                                                      width: 54,
                                                      height: 36,
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                        color: _selectedIndex ==
                                                                index
                                                            ? Color(0xFFDEDEDE)
                                                            : Colors
                                                                .transparent,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6),
                                                      ),
                                                      child: Text(
                                                        lists[index].amount,
                                                        style: TextStyle(
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontWeight:
                                                              _selectedIndex ==
                                                                      index
                                                                  ? FontWeight
                                                                      .w700
                                                                  : FontWeight
                                                                      .w500,
                                                          fontSize:
                                                              _selectedIndex ==
                                                                      index
                                                                  ? 18
                                                                  : 16,
                                                          color:
                                                              Color(0xFF6C6C6C),
                                                        ),
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Container(
                                                      width: 12,
                                                      height: 12,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        color: _selectedIndex ==
                                                                index
                                                            ? Colors.blue
                                                            : Color(0xFF484848),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  addBool() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("value", isRight);
  }

  getBool() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isRight = prefs.getBool("value") ?? true;
    });
  }

  setMute() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isMute", isMute);
  }

  getMute() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isMute = prefs.getBool("isMute") ?? true;
    });
  }
}
