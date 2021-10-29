import 'package:al_quran/src/models/player_model.dart';
import 'package:al_quran/src/models/week_model.dart';
import 'package:al_quran/src/ui/home/home_screen.dart';
import 'package:al_quran/src/ui/home/setting_time.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:al_quran/src/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TimeScreen extends StatefulWidget {
  @override
  _TimeScreenState createState() => _TimeScreenState();
}

class _TimeScreenState extends State<TimeScreen> {
  int _selektedIndex = 0;
  int _selektedValue = 1;

  List<PlayerModel> dataPlayer = [
    PlayerModel(
      icon1: "assets/icons/sunrise.svg",
      name: "Fajr",
      time: "03:16 - 04:59",
      icon2: "assets/icons/speaker.svg",
    ),
    PlayerModel(
      icon1: "assets/icons/sunMax.svg",
      name: "Dhuhr",
      time: "12:28 - 17:39",
      icon2: "assets/icons/speaker.svg",
    ),
    PlayerModel(
      icon1: "assets/icons/sunHaze.svg",
      name: "Asr",
      time: "17:40 - 20:01",
      icon2: "assets/icons/speaker.svg",
    ),
    PlayerModel(
      icon1: "assets/icons/sunset.svg",
      name: "Maghrib",
      time: "20:02 - 20:52",
      icon2: "assets/icons/speaker.svg",
    ),
    PlayerModel(
      icon1: "assets/icons/moon.svg",
      name: "Isha’a",
      time: "21:35 - 03:15",
      icon2: "assets/icons/speaker.svg",
    ),
  ];

  List<WeekModel> data = [
    WeekModel(days: "1", date: "Wed"),
    WeekModel(days: "2", date: "Thu"),
    WeekModel(days: "3", date: "Fri"),
    WeekModel(days: "4", date: "Sat"),
    WeekModel(days: "5", date: "Sun"),
    WeekModel(days: "6", date: "Mon"),
    WeekModel(days: "7", date: "Tou"),
    WeekModel(days: "8", date: "Wed"),
    WeekModel(days: "9", date: "Thu"),
    WeekModel(days: "10", date: "Fri"),
    WeekModel(days: "11", date: "Sat"),
    WeekModel(days: "12", date: "Sun"),
    WeekModel(days: "13", date: "Mon"),
    WeekModel(days: "14", date: "Tou"),
    WeekModel(days: "15", date: "Wed"),
    WeekModel(days: "16", date: "Thu"),
    WeekModel(days: "17", date: "Fri"),
    WeekModel(days: "18", date: "Sat"),
    WeekModel(days: "19", date: "Sun"),
    WeekModel(days: "20", date: "Mon"),
    WeekModel(days: "21", date: "Tou"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 125,
        backgroundColor: Color(0xFFDCDCDC),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.pop(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            });
          },
          child: Row(
            children: [
              SizedBox(
                width: 16,
              ),
              Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF3A3A3C),
              ),
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
        title: Text(
          "Quran",
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
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SettingTime();
                }));
              });
            },
            child: Container(
              margin: EdgeInsets.only(
                right: 12,
              ),
              child: Icon(
                Icons.settings_outlined,
                size: 24,
                color: Color(0xFF3A3A3C),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 90,
          ),
          TitleWidget(
            textLeft: "Prayer time",
            leftSize: 26,
            colorLeft: Color(0xFF535353),
            margin: EdgeInsets.only(top: 22, left: 24, bottom: 6),
          ),
          Container(
            height: 96,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 24),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selektedIndex = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 120),
                      height: _selektedIndex == index ? 96 : 80,
                      width: _selektedIndex == index ? 66 : 62,
                      margin: EdgeInsets.only(
                        right: 12,
                        top: _selektedIndex == index ? 0 : 8,
                        bottom: _selektedIndex == index ? 0 : 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: _selektedIndex == index
                            ? Color(0xFFE1E1E1)
                            : Color(0xFFC4C4C4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            data[index].date,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF747474),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.2,
                            ),
                          ),
                          Text(
                            data[index].days,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF434343),
                              fontWeight: FontWeight.w600,
                              fontSize: 26,
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
            leftSize: 26,
            colorLeft: Color(0xFF535353),
            margin: EdgeInsets.only(top: 22, left: 24),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 48,
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selektedValue = index;
                      });
                    },
                    child: Container(
                      height: 66,
                      margin: EdgeInsets.only(bottom: 12),
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      decoration: BoxDecoration(
                        color: _selektedValue == index
                            ? Color(0xFFE1E1E1)
                            : Color(0xFFCDCDCD),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Color(0xFFACACAC),
                            ),
                            child: SvgPicture.asset(
                              dataPlayer[index].icon1,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                dataPlayer[index].name,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF5F5F5F),
                                ),
                              ),
                              Text(
                                dataPlayer[index].time,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF979797),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Color(0xFFACACAC),
                            ),
                            child: SvgPicture.asset(
                              dataPlayer[index].icon2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
