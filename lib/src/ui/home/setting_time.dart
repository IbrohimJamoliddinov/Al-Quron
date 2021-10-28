import 'package:al_quran/src/models/athan_model.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SettingTime extends StatefulWidget {
  @override
  _SettingTimeState createState() => _SettingTimeState();
}

class _SettingTimeState extends State<SettingTime> {
  bool status = false;
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
        leadingWidth: 125,
        backgroundColor: Color(0xFFDCDCDC),
        elevation: 0,
        leading: Row(
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
        title: Text(
          "Peshin",
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
            height: 108,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              top: 16,
              bottom: 8,
            ),
            padding: EdgeInsets.all(16),
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
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 14),
                    height: 0,
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
                        onToggle: (val) {
                          setState(() {
                            status = val;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
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
          Row(
            children: [
              Text(
                "Athan",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Color(0xFF535353),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(
              top: 8,
              bottom: 24,
            ),
            height: 438,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFCDCDCD),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: dataSignal.length,
              itemBuilder: (context, verbl) {
                return Container(
                  height: 54,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            dataSignal[verbl].name,
                            style: TextStyle(
                              color: AppTheme.textColorGrey,
                              fontSize: 16,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.grey,
                            ),
                            child: SvgPicture.asset(
                              dataSignal[verbl].icon,
                            ),
                          ),
                        ],
                      ),
                      verbl == dataSignal.length - 1
                          ? Container()
                          : Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 12),
                                height: 0,
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
