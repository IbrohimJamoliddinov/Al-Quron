import 'package:al_quran/src/models/nomoz_vaqti.dart';
import 'package:al_quran/src/models/qori_title.dart';
import 'package:al_quran/src/ui/home/reciters.dart';
import 'package:al_quran/src/ui/home/time_screen.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:al_quran/src/widgets/title_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  String bomdod = "03:00";
  String peshin = "12:27";
  String asr = "17:45";
  String shom = "20:10";
  String xufton = "21:40";

  List<QoriModel> dataProfile = [
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TimeScreen(
                      title: data[_selectedIndex].neme,
                    );
                  },
                ),
              );
            },
            child: Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                left: 16,
                top: 54,
                right: 16,
              ),
              decoration: BoxDecoration(
                color: AppTheme.bgColorOwe,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    child: CircularPercentIndicator(
                      radius: 160.0,
                      lineWidth: 10.0,
                      percent: 0.68,
                      animation: true,
                      animationDuration: 1200,
                      center: Center(
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
                      circularStrokeCap: CircularStrokeCap.butt,
                      progressColor: Color(0xFF5F5F5F),
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
                        Row(
                          children: [
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFFC4C4C4),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              child: Text(
                                "Tashakent, UZ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  letterSpacing: 0.3,
                                  color: Color(0xFF6B6B6B),
                                ),
                              ),
                            )
                          ],
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
          ),
          TitleWidget(
            textLeft: "Prayer time",
            colorLeft: Color(0xFF242424),
            leftSize: 26,
            margin: EdgeInsets.only(top: 22, left: 24, bottom: 6),
          ),
          Container(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(
                left: 24,
                right: 8,
              ),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return TimeScreen(
                            title: data[index].neme,
                          );
                        },
                      ),
                    );
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 270),
                    curve: Curves.easeInOut,
                    height: 80,
                    width: 120,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    margin: EdgeInsets.only(
                      right: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: _selectedIndex == index
                          ? Color(0xFFE1E1E1)
                          : Color(0xFFC4C4C4),
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
              },
            ),
          ),
          TitleWidget(
            textLeft: "Learn",
            colorLeft: Color(0xFF242424),
            leftSize: 26,
            margin: EdgeInsets.only(top: 22, bottom: 6, left: 24),
          ),
          Container(
            height: (MediaQuery.of(context).size.width - 48) * 140 / 324,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 24, right: 24),
            decoration: BoxDecoration(
              color: Color(0xFFC4C4C4),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 22,
              left: 22,
              right: 24,
              bottom: 4,
            ),
            child: Row(
              children: [
                Text(
                  "Quran reciters",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                    color: Color(0xFF242424),
                    letterSpacing: 0.2,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RecitersScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xBFB9B9BB),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      "view all",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFF0469FF),
                        letterSpacing: 0.2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 141,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 24),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, value) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RecitersScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    width: 252,
                    margin: EdgeInsets.only(right: 16),
                    child: Stack(
                      children: [
                        Align(
                          child: Container(
                            height: 98,
                            width: 252,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFCDCDCD),
                            ),
                            padding: EdgeInsets.only(
                              top: 12,
                              bottom: 12,
                              left: 116,
                              right: 12,
                            ),
                            child: Text(
                              dataProfile[value].name,
                              maxLines: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 23,
                                letterSpacing: 0.2,
                              ),
                            ),
                          ),
                          alignment: Alignment.bottomCenter,
                        ),
                        ClipRRect(
                          child: Image.asset(
                            dataProfile[value].image,
                            height: 141,
                            width: 104,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
