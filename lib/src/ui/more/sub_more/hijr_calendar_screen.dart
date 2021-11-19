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
          "Donate",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: HijriMonthPicker(
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
          )
        ],
      ),
    );
  }
}
