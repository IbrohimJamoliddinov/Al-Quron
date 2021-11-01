import 'package:al_quran/src/models/surah_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InsideRead extends StatefulWidget {

  @override
  _InsideReadState createState() => _InsideReadState();
}

class _InsideReadState extends State<InsideRead> {
  int _selektedIndex = 0;

  List<SurahScreen> dataSurah = [
    SurahScreen(surahName: "Sura Al-Fatihah", ayahMor: "Makkah,  7 ayah"),
    SurahScreen(surahName: "Sura Al-Baqarah", ayahMor: "Madinah,  286 ayah"),
    SurahScreen(surahName: "Sura An-Nisa", ayahMor: "Madinah,  176 ayah"),
    SurahScreen(surahName: "Sura Al-Ma’idah", ayahMor: "Madinah,  200 ayah"),
    SurahScreen(surahName: "Sura Al-Fatihah", ayahMor: "Makkah,  7 ayah"),
    SurahScreen(surahName: "Sura Al-Baqarah", ayahMor: "Madinah,  286 ayah"),
    SurahScreen(surahName: "Sura An-Nisa", ayahMor: "Madinah,  176 ayah"),
    SurahScreen(surahName: "Sura Al-Ma’idah", ayahMor: "Madinah,  200 ayah"),
    SurahScreen(surahName: "Sura Al-Fatihah", ayahMor: "Makkah,  7 ayah"),
    SurahScreen(surahName: "Sura Al-Baqarah", ayahMor: "Madinah,  286 ayah"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFDCDCDC),
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 10),
              child: Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFEBEBEB),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Icon(
                      Icons.search,
                      size: 24,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 120,
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
                        margin: EdgeInsets.only(left: 24, right: 24, top: 22),
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
                              _selektedIndex = _index;
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
                        color: _selektedIndex == 2
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
                        color: _selektedIndex == 0
                            ? Color.fromRGBO(60, 60, 67, 0.36)
                            : Colors.transparent,
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: dataSurah.length,
                      itemBuilder: (context, index) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 4,
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
                                  SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Text(
                                              dataSurah[index].surahName,
                                              style: TextStyle(
                                                color: Color(0xFF575757),
                                                fontSize: 18,
                                                letterSpacing: 0.2,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              dataSurah[index].ayahMor,
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
                                  SizedBox(height: 3),
                                  index == dataSurah.length - 1
                                      ? Container()
                                      : Container(
                                    height: 1,
                                    color: Color(0xFFCCCCCC),
                                  ),
                                  index == dataSurah.length - 1
                                      ? Container()
                                      : SizedBox(height: 8),
                                ],
                              ),
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
