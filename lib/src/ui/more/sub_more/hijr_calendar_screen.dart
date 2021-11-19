import 'package:al_quran/src/utils/app_theme.dart';
import 'package:al_quran/src/widgets/hijr/hijr_calendar_widger.dart';
import 'package:al_quran/src/widgets/hijr/hijr_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HijrCalendarScreen extends StatefulWidget {
  @override
  _HijrCalendarScreenState createState() => _HijrCalendarScreenState();
}

class _HijrCalendarScreenState extends State<HijrCalendarScreen> {
  var selectedDate = new HijriCalendar.now();
  final GlobalKey _pickerKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: AppBar(
        leadingWidth: 98,
        backgroundColor: Color(0xFFDCDCDC),
        elevation: 0,
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 16),
              child: SvgPicture.asset(
                "assets/icons/calendar.svg",
              ),
            ),
          )
        ],
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
          "Islamic Calendar",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 27,
              left: 24,
              right: 24,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFDCDCDC),
              borderRadius: BorderRadiusDirectional.circular(12),
            ),
            child: HijriMonthPicker(
              width: MediaQuery.of(context).size.width,
              key: _pickerKey,
              selectedDate: selectedDate,
              onChanged: (value) {
                setState(() {
                  selectedDate = value;
                });
              },
              firstDate: new HijriCalendar()
                ..hYear = 1438
                ..hMonth = 12
                ..hDay = 25,
              lastDate: new HijriCalendar()
                ..hYear = 1445
                ..hMonth = 9
                ..hDay = 25,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFDCDCDC),
              borderRadius: BorderRadiusDirectional.circular(12),
            ),
            margin: EdgeInsets.only(
              top: 12,
              left: 24,
              right: 24,
              bottom: 16,
            ),
            child: Text(
              "Calculation of the hijriy date may be differ 1 till 4 days interval by the reason of moon days",
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24, bottom: 6),
            child: Text("Events"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              padding: EdgeInsets.symmetric(horizontal: 24),
              itemBuilder: (_, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFDCDCDC),
                    borderRadius: BorderRadiusDirectional.circular(12),
                  ),
                  margin: EdgeInsets.only(
                    bottom: 12,
                  ),
                  padding: EdgeInsets.only(
                    left: 3,
                    right: 10,
                    bottom: 3,
                    top: 3,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppTheme.white,
                          borderRadius: BorderRadiusDirectional.circular(12),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Text(
                              "15",
                              style: TextStyle(
                                fontFamily: AppTheme.fontPoppins,
                                fontSize: 37,
                              ),
                            ),
                            SizedBox(width: 3),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Jan",
                                  style: TextStyle(
                                    fontFamily: AppTheme.fontPoppins,
                                    fontSize: 15,
                                    color: Color(0xFF8F8F8F),
                                  ),
                                ),
                                Text(
                                  "2021",
                                  style: TextStyle(
                                    fontFamily: AppTheme.fontPoppins,
                                    fontSize: 15,
                                    color: Color(0xFF8F8F8F),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Eid al-Fitr",
                              style: TextStyle(
                                fontFamily: AppTheme.fontPoppins,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF464646),
                              ),
                            ),
                            Text(
                              "1442 12-shawwal",
                              style: TextStyle(
                                fontFamily: AppTheme.fontPoppins,
                                fontSize: 15,
                                color: Color(0xFF8F8F8F),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFFC4C4C4),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      )
                    ],
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
