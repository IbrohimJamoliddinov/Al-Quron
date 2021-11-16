import 'package:al_quran/src/models/athan_model.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingTime extends StatefulWidget {
  final String title;

  SettingTime({
    required this.title,
  });

  @override
  _SettingTimeState createState() => _SettingTimeState();
}

class _SettingTimeState extends State<SettingTime> {
  bool status = false;
  int _selectedIndex = 2;
  List<AthanModel> dataSignal = [
    AthanModel(
      name: "No signal",
      icon: "assets/icons/speakerSlash.svg",
    ),
    AthanModel(
      name: "Vibration",
      icon: "assets/icons/speakerZzz.svg",
    ),
    AthanModel(
      name: "Signal",
      icon: "assets/icons/speakerWave.svg",
    ),
    AthanModel(
      name: "Azan Fajr (Madina)",
      icon: "assets/icons/speakerWave.svg",
    ),
    AthanModel(
      name: "Azan Abdulbaset",
      icon: "assets/icons/speakerWave2.svg",
    ),
    AthanModel(
      name: "Athan 4",
      icon: "assets/icons/speakerWave2.svg",
    ),
    AthanModel(
      name: "Athan 5",
      icon: "assets/icons/speakerWave2.svg",
    ),
    AthanModel(
      name: "Athan 6",
      icon: "assets/icons/speakerWave2.svg",
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
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 18,
            ),
            padding: EdgeInsets.only(
              top: 16,
              left: 16,
              right: 16,
              bottom: 9,
            ),
            decoration: BoxDecoration(
              color: AppTheme.bgColorToo,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(
                      "Reminder",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF757575),
                        letterSpacing: 0.2,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "No",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF757575),
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 14),
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color(0xFFDADADA),
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Full Athan",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF757575),
                        letterSpacing: 0.2,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      child: CupertinoSwitch(
                        value: status,
                        onChanged: (bool value) {
                          setState(() {
                            status = value;
                          });
                        },
                      ),
                      onTap: () {
                        setState(() {
                          status = !status;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 6),
          Text(
            "Full track of the current selected athan will be played end of the track",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF989898),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Athan",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: Color(0xFF535353),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 8,
              bottom: 24,
            ),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFCDCDCD),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.only(top: 10),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: dataSignal.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                          left: 18,
                          right: 18,
                          top: 12,
                          bottom: 12,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: _selectedIndex == index
                              ? Color(0xFFE1E1E1)
                              : Colors.transparent,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                dataSignal[index].name,
                                style: TextStyle(
                                  color: AppTheme.textColorGrey,
                                  fontSize: 16,
                                  letterSpacing: 0.2,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.grey,
                              ),
                              child: SvgPicture.asset(
                                dataSignal[index].icon,
                              ),
                            ),
                          ],
                        ),
                      ),
                      index == dataSignal.length - 1
                          ? Container()
                          : Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width,
                              color: Color(0xFFDADADA),
                              margin: EdgeInsets.symmetric(horizontal: 18),
                            ),
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
