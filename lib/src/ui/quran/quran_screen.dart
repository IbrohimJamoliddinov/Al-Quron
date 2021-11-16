import 'package:al_quran/src/models/surah_model.dart';
import 'package:al_quran/src/ui/more/youtube_screen.dart';
import 'package:al_quran/src/ui/quran/quran_item_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuranScreen extends StatefulWidget {
  @override
  _QuranScreenState createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
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
          backgroundColor: Color(0xFFDCDCDC),
          elevation: 0,
          centerTitle: true,
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
                  Stack(
                    children: [
                      Container(
                        height: 32,
                        margin: EdgeInsets.only(left: 24, right: 24, top: 20),
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
                          top: 30,
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
                          top: 30,
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
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) {
                                  return QuranItemScreen(
                                    title: data[index].surahName,
                                  );
                                },
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
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
                                      "assets/icons/cloud.svg",
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    SvgPicture.asset(
                                      "assets/icons/more_horizontal.svg",
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
                            ),
                          ),
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
