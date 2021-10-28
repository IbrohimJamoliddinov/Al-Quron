import 'package:al_quran/src/models/surah_model.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InsideScreen extends StatefulWidget {
  @override
  _InsideScreenState createState() => _InsideScreenState();
}

class _InsideScreenState extends State<InsideScreen> {
  // int _selektedIndex = 0;

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
            // width: MediaQuery.of(context).size.width,
            color: Color(0xFFDCDCDC),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 10),
              child: Container(
                height: 40,
                width: 300,
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
          ),
          Expanded(child: ListView(
            children: [
              Container(
                height: 194,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                  left: 24,
                  top: 20,
                  right: 24,
                  bottom: 14,
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
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Text(
                                "Mishary Rashid Al Afasy",
                                maxLines: 2,
                                style: TextStyle(
                                  color: AppTheme.dark,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.2,
                                ),
                              ),
                              width: 146,
                            ),
                            Text(
                              "114 surah recorded",
                              style: TextStyle(
                                color: Color(0xFF6F6F6F),
                                fontSize: 16,
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 2),
                              padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
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
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Text(
                            "Born in Kuwait, is a qāri (reciter of the Quran), imam, preacher, and Nasheed artist. He studied in the Islamic University of Madi",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              letterSpacing: 0.2,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
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
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(2),
                height: 32,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFEAEAEA),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 28,
                      alignment: Alignment.center,
                      width: (MediaQuery.of(context).size.width - 60) / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Text(
                        "Surah",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppTheme.dark,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                    Container(
                      height: 28,
                      alignment: Alignment.center,
                      width: (MediaQuery.of(context).size.width - 60) / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Text(
                        "Surah",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppTheme.dark,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                    Container(
                      height: 28,
                      alignment: Alignment.center,
                      width: (MediaQuery.of(context).size.width - 60) / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Text(
                        "Surah",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppTheme.dark,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                  ],
                ),
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
                        children: [
                          SizedBox(width: 4,),
                          Text(
                            (index + 1).toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.16,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 2,   top: 4),
                            width: MediaQuery.of(context).size.width - 64,
                            height: 56,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 12,
                                    bottom: 6,
                                  ),
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                  ),
                                ),
                                Spacer(),
                                SvgPicture.asset(
                                  "assets/images/cloud.svg",
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                SvgPicture.asset(
                                  "assets/images/ellipse.svg",
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),)
        ],
      )
    );
  }
}
