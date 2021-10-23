import 'package:al_quran/src/models/nomoz_vaqti.dart';
import 'package:al_quran/src/models/qori_title.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:al_quran/src/widgets/title_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selektedIndex = 1;

  String bomdod = "03:00";
  String peshin = "12:27";
  String asr = "17:45";
  String shom = "20:10";
  String xufton = "21:40";

  List<QoriModel> dataProfil = [
    QoriModel(
      image: "assets/images/alAfasiy.png",
      name: "Mishary Rashid Al Afasy",
      taxallus: "Style: Yusuf Ali",
    ),
    QoriModel(
      image: "assets/images/alKurdi.png",
      name: "Muhammad Raad Al Kurdi",
      taxallus: "Style: Yusuf Ali",
    ),
    QoriModel(
      image: "assets/images/alSoudais.png",
      name: "Abdul Rahman Al Soudais",
      taxallus: "Style: Yusuf Ali",
    ),
    QoriModel(
      image: "assets/images/alAfasiy.png",
      name: "Mishary Rashid Al Afasy",
      taxallus: "Style: Yusuf Ali",
    ),
  ];

  List<NomozVaqti> data = [
    NomozVaqti(
      neme: "Bomdot",
      time: "03:00",
    ),
    NomozVaqti(
      neme: "Peshin",
      time: "12:27",
    ),
    NomozVaqti(
      neme: "Asr",
      time: "17:45",
    ),
    NomozVaqti(
      neme: "Shom",
      time: "20:10",
    ),
    NomozVaqti(
      neme: "Xufton",
      time: "21:40",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 220,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              left: 16,
              top: 54,
              right: 16,
              bottom: 16,
            ),
            decoration: BoxDecoration(
              color: AppTheme.bgColorOwe,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xFF4D4D4D),
                                Color.fromRGBO(
                                    149, 149, 149, 0.5019607843137255),
                              ]),
                        ),
                      ),
                      Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          color: Color(0xFFDBDADA),
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Peshin",
                              style: TextStyle(
                                color: Color(0xFFB6B6B6),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.2,
                              ),
                            ),
                            Text(
                              peshin,
                              style: TextStyle(
                                color: Color(0xFF434343),
                                fontWeight: FontWeight.w700,
                                fontSize: 38,
                                letterSpacing: 0.2,
                              ),
                            ),
                            Text(
                              "-01:52:00",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.2,
                                  color: AppTheme.textColorGrey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(left: 16),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        margin: EdgeInsets.only(top: 24),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFADADAD),
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/speaker.svg",
                          width: 24,
                          height: 24,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Shavval 14",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.2,
                          color: AppTheme.textColorGrey,
                        ),
                      ),
                      Text(
                        "1442 hijriy",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.2,
                          color: Color(0xFF8B8B8B),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        width: 120,
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFC4C4C4),
                        ),
                        child: Center(
                          child: Text(
                            "Tashakent, UZ",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0.3,
                              color: Color(0xFF6B6B6B),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
              ],
            ),
          ),
          TitleWidget(
            textLeft: "Prayer time",
            colorLeft: Color(0xFF242424),
            leftSize: 26,
          ),
          Container(
            height: 80,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        _selektedIndex = index;
                      });
                    },
                    child: Container(
                      height: 86,
                      width: 120,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      margin: EdgeInsets.only(
                        left: 8,
                        right: 8,
                        top: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: _selektedIndex == index ? Color(0xFFE1E1E1): Color(0xFFC4C4C4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            data[index].neme,
                            style: TextStyle(
                              color: Color(0xFF6B6B6B),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.2,
                            ),
                          ),
                          Text(
                            data[index].time,
                            style: TextStyle(
                              color: Color(0xFF6B6B6B),
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          TitleWidget(
            textLeft: "Learn",
            colorLeft: Color(0xFF242424),
            leftSize: 26,
            margin: EdgeInsets.only(top: 22, bottom: 6, left: 24),
          ),
          Container(
            height: 140,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 24, right: 24, bottom: 22),
            decoration: BoxDecoration(
              color: Color(0xFFC4C4C4),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          TitleWidget(
            textLeft: "Quran reciters",
            colorLeft: Color(0xFF242424),
            leftSize: 26,
            textRight: "view all",
            colorRight: Color(0xFF0469FF),
            rightSize: 16,
          ),
          Container(
            height: 148,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 24),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, value) {
                  return Container(
                    margin: EdgeInsets.only(right: 12, top: 8),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 18),
                          height: 98,
                          width: 252,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFFCDCDCD),
                          ),
                          child: Row(
                            children: [
                              Spacer(),
                              Container(
                                width: 140,
                                height: 80,
                                child: Text(
                                  dataProfil[value].name,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    letterSpacing: 0.2,
                                  ),
                                ),
                              )
                            ],
                          )
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            dataProfil[value].image,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
