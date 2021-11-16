import 'package:al_quran/src/models/player_model.dart';
import 'package:al_quran/src/models/week_model.dart';
import 'package:al_quran/src/ui/home/home_screen.dart';
import 'package:al_quran/src/ui/home/setting_time.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:al_quran/src/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TimeScreen extends StatefulWidget {
  final String title;

  TimeScreen({
    required this.title,
  });

  @override
  _TimeScreenState createState() => _TimeScreenState();
}

class _TimeScreenState extends State<TimeScreen> {
  int _selectedIndex = 0;
  int _selectedValue = 1;

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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingTime(
                      title: widget.title,
                    );
                  },
                ),
              );
            },
            child: Container(
              height: 28,
              width: 28,
              margin: EdgeInsets.only(
                right: 17,
              ),
              child: SvgPicture.asset("assets/icons/settings.svg"),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 24,
              right: 24,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFC4C4C4),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 54,
                    child: Row(
                      children: [
                        SizedBox(width: 18),
                        SvgPicture.asset("assets/icons/arrow_left_normal.svg"),
                        SizedBox(width: 4),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "13 dec, 2021",
                                style: TextStyle(
                                  fontFamily: AppTheme.fontPoppins,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  height: 1.2,
                                  color: Color(0xFF434343),
                                ),
                              ),
                              Text(
                                "16 shavval, 1442 hijriy",
                                style: TextStyle(
                                  fontFamily: AppTheme.fontPoppins,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  height: 1.2,
                                  color: Color(0xFF747474),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 4),
                        SvgPicture.asset("assets/icons/arrow_right_normal.svg"),
                        SizedBox(width: 18),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 6),
                Container(
                  height: 54,
                  width: 54,
                  decoration: BoxDecoration(
                    color: Color(0xFFC4C4C4),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/icons/calendar.svg",
                      width: 24,
                      height: 24,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 96,
            margin: EdgeInsets.only(top: 20),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 24),
              itemCount: 20,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 120),
                    height: _selectedIndex == index ? 96 : 80,
                    width: _selectedIndex == index ? 66 : 62,
                    margin: EdgeInsets.only(
                      right: 12,
                      top: _selectedIndex == index ? 0 : 8,
                      bottom: _selectedIndex == index ? 0 : 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: _selectedIndex == index
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
                            fontSize: _selectedIndex == index ? 17 : 16,
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
                            fontSize: _selectedIndex == index ? 29 : 26,
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
            leftSize: 26,
            colorLeft: Color(0xFF535353),
            margin: EdgeInsets.only(top: 20, left: 24, bottom: 8),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedValue = index;
                    });
                  },
                  child: Container(
                    height: 66,
                    margin: EdgeInsets.only(bottom: 12),
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    decoration: BoxDecoration(
                      color: _selectedValue == index
                          ? Color(0xFFE1E1E1)
                          : Color(0xFFCDCDCD),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 28,
                          height: 28,
                          padding: EdgeInsets.all(4),
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
                                fontSize: 16,
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
              },
            ),
          )
        ],
      ),
    );
  }
}
