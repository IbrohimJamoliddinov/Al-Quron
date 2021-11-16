import 'package:al_quran/src/models/surah_model.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InsideScreen extends StatefulWidget {
  @override
  _InsideScreenState createState() => _InsideScreenState();
}

class _InsideScreenState extends State<InsideScreen> {
  int _selectedIndex = 0;

  List<SurahScreen> data = [
    SurahScreen(
      surahName: "Sura Al-Fatihah",
      ayahMor: "Makkah,  7 ayah",
    ),
    SurahScreen(
      surahName: "Sura Al-Baqarah",
      ayahMor: "Madinah,  286 ayah",
    ),
    SurahScreen(
      surahName: "Sura An-Nisa",
      ayahMor: "Madinah,  176 ayah",
    ),
    SurahScreen(
      surahName: "Sura Al-Ma’idah",
      ayahMor: "Madinah,  200 ayah",
    ),
    SurahScreen(
      surahName: "Sura Al-Fatihah",
      ayahMor: "Makkah,  7 ayah",
    ),
    SurahScreen(
      surahName: "Sura Al-Baqarah",
      ayahMor: "Madinah,  286 ayah",
    ),
    SurahScreen(
      surahName: "Sura An-Nisa",
      ayahMor: "Madinah,  176 ayah",
    ),
    SurahScreen(
      surahName: "Sura Al-Ma’idah",
      ayahMor: "Madinah,  200 ayah",
    ),
    SurahScreen(
      surahName: "Sura Al-Fatihah",
      ayahMor: "Makkah,  7 ayah",
    ),
    SurahScreen(
      surahName: "Sura Al-Baqarah",
      ayahMor: "Madinah,  286 ayah",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
            "Quran",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xFFDCDCDC),
              padding: EdgeInsets.only(left: 24.0, right: 24, bottom: 10),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFEBEBEB),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    SvgPicture.asset(
                      "assets/icons/search.svg",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Search reciters...",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            letterSpacing: -0.41,
                            color: Color(0xFF808078),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height:
                        (MediaQuery.of(context).size.width - 48) * 183 / 327,
                    margin: EdgeInsets.only(
                      left: 24,
                      top: 20,
                      right: 24,
                    ),
                    decoration: BoxDecoration(
                      color: AppTheme.bgColorOwe,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 16),
                            Image.asset(
                              "assets/images/mishary2.png",
                              height: 112,
                              width: 82,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Mishary Rashid Al Afasy",
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: AppTheme.dark,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.2,
                                      height: 1.2,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "114 surah recorded",
                                    style: TextStyle(
                                      color: Color(0xFF6F6F6F),
                                      fontSize: 16,
                                      letterSpacing: 0.2,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 4,
                                          horizontal: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Color(0xFFC2C2C2),
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Style:",
                                              style: TextStyle(
                                                color: Color(0xFF6F6F6F),
                                                fontSize: 14,
                                                letterSpacing: 0.2,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              " Yusuf Ali",
                                              style: TextStyle(
                                                color: Color(0xFF6F6F6F),
                                                fontSize: 14,
                                                letterSpacing: 0.2,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(12),
                            child: Stack(
                              children: [
                                Text(
                                  "Born in Kuwait, is a qāri (reciter of the Quran), imam, preacher, and Nasheed artist. He studied in the Islamic University of Madina. Born in Kuwait, is a qāri (reciter of the Quran), imam, preacher, and Nasheed artist.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    letterSpacing: 0.2,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEAEAEA),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xFFD9D9D9),
                                          offset: Offset(-8, 0),
                                          spreadRadius: 6,
                                          blurRadius: 10,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      "more",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 32,
                        margin: EdgeInsets.only(left: 24, right: 24, top: 14),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Color(0xFFEAEAEA),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TabBar(
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          automaticIndicatorColorAdjustment: false,
                          unselectedLabelColor: Color(0xFF8F8F8F),
                          labelColor: Color(0xFF3D3D3D),
                          onTap: (_index) {
                            setState(() {
                              _selectedIndex = _index;
                            });
                          },
                          tabs: [
                            Text("Surah"),
                            Text("Juz"),
                            Text("Bookmark"),
                          ],
                        ),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 270),
                        curve: Curves.easeInOut,
                        margin: EdgeInsets.only(
                          left:
                              24 + (MediaQuery.of(context).size.width - 48) / 3,
                          top: 22,
                        ),
                        height: 16,
                        width: 1,
                        color: _selectedIndex == 2
                            ? Color.fromRGBO(60, 60, 67, 0.36)
                            : Colors.transparent,
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 270),
                        curve: Curves.easeInOut,
                        margin: EdgeInsets.only(
                          left: 24 +
                              (MediaQuery.of(context).size.width - 48) *
                                  2.0 /
                                  3,
                          top: 22,
                        ),
                        height: 16,
                        width: 1,
                        color: _selectedIndex == 0
                            ? Color.fromRGBO(60, 60, 67, 0.36)
                            : Colors.transparent,
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(
                      top: 10,
                      left: 24,
                      right: 24,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: data.length,
                      padding: EdgeInsets.only(top: 4),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  (index + 1).toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.16,
                                  ),
                                ),
                                SizedBox(width: 14),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        data[index].surahName,
                                        style: TextStyle(
                                          color: Color(0xFF575757),
                                          fontSize: 18,
                                          letterSpacing: 0.2,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text(
                                        data[index].ayahMor,
                                        style: TextStyle(
                                          color: Color(0xFF888888),
                                          fontSize: 16,
                                          letterSpacing: 0.2,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                ),
                                SvgPicture.asset(
                                  "assets/images/cloud.svg",
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                SvgPicture.asset(
                                  "assets/images/ellipse.svg",
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            index == data.length - 1
                                ? Container()
                                : Container(
                                    margin: EdgeInsets.only(
                                      left: 34,
                                    ),
                                    height: 1,
                                    color: Color(0xFFCCCCCC),
                                  ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
