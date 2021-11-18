import 'package:al_quran/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LetterAlifScreen extends StatefulWidget {
  @override
  _LetterAlifScreenState createState() => _LetterAlifScreenState();
}

class _LetterAlifScreenState extends State<LetterAlifScreen> {
  List<String> data = [
    "مْسِب",
    "هَّللا",
    " ِنٰـَمْحَّرلا",
    "ميِحَّرلا",
  ];

  int _selectedIndex = -1;

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
          "Letter Alif",
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: AppTheme.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              top: 20,
              left: 24,
              right: 24,
            ),
            padding: EdgeInsets.only(
              top: 21,
              bottom: 10,
              left: 24,
            ),
            height: 177,
            decoration: BoxDecoration(
              color: Color(0xFFE2E2E2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 32),
                      Text(
                        "ك",
                        style: TextStyle(
                          fontFamily: AppTheme.fontPoppins,
                          fontSize: 56,
                          height: 0.19,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 50),
                      Text(
                        "[ka]",
                        style: TextStyle(
                          fontFamily: AppTheme.fontPoppins,
                          fontSize: 56,
                          height: 0.19,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                Container(
                  height: 118,
                  width: 113,
                  decoration: BoxDecoration(
                    color: Color(0xFFC4C4C4),
                  ),
                ),
                SizedBox(width: 11),
                Column(
                  children: [
                    Spacer(),
                    Container(
                      height: 28,
                      width: 28,
                      padding: EdgeInsets.only(left: 3),
                      decoration: BoxDecoration(
                        color: Color(0xFFC4C4C4),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Center(
                        child: SvgPicture.asset("assets/icons/alif_play.svg"),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(
                top: 16,
                left: 24,
                right: 24,
                bottom: 24,
              ),
              itemCount: 5,
              itemBuilder: (_, index) {
                return Column(
                  children: [
                    SizedBox(height: 36),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index * 4;
                            });
                          },
                          child: Container(
                            child: Text(
                              data[0],
                              style: TextStyle(
                                fontFamily: AppTheme.fontPoppins,
                                fontWeight: FontWeight.normal,
                                fontSize: 32,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: index * 4 == _selectedIndex
                                  ? Color(0xFFEFEFEF)
                                  : Colors.transparent,
                              border: Border.all(
                                color: index * 4 == _selectedIndex
                                    ? Color(0xFFD6D6D6)
                                    : Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index * 4 + 1;
                            });
                          },
                          child: Container(
                            child: Text(
                              data[1],
                              style: TextStyle(
                                fontFamily: AppTheme.fontPoppins,
                                fontWeight: FontWeight.normal,
                                fontSize: 32,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: index * 4 + 1 == _selectedIndex
                                  ? Color(0xFFEFEFEF)
                                  : Colors.transparent,
                              border: Border.all(
                                color: index * 4 + 1 == _selectedIndex
                                    ? Color(0xFFD6D6D6)
                                    : Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index * 4 + 2;
                            });
                          },
                          child: Container(
                            child: Text(
                              data[2],
                              style: TextStyle(
                                fontFamily: AppTheme.fontPoppins,
                                fontWeight: FontWeight.normal,
                                fontSize: 32,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: index * 4 + 2 == _selectedIndex
                                  ? Color(0xFFEFEFEF)
                                  : Colors.transparent,
                              border: Border.all(
                                color: index * 4 + 2 == _selectedIndex
                                    ? Color(0xFFD6D6D6)
                                    : Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index * 4 + 3;
                            });
                          },
                          child: Container(
                            child: Text(
                              data[3],
                              style: TextStyle(
                                fontFamily: AppTheme.fontPoppins,
                                fontWeight: FontWeight.normal,
                                fontSize: 32,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: index * 4 + 3 == _selectedIndex
                                  ? Color(0xFFEFEFEF)
                                  : Colors.transparent,
                              border: Border.all(
                                color: index * 4 + 3 == _selectedIndex
                                    ? Color(0xFFD6D6D6)
                                    : Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              color: Color(0xFFADADAD),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Center(
                              child: Text(
                                index.toString(),
                                style: TextStyle(
                                  fontFamily: AppTheme.fontPoppins,
                                  fontSize: 15,
                                  color: AppTheme.white,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(
                              "assets/icons/alif_play_border.svg",
                            ),
                          ),
                          SizedBox(width: 12),
                          GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(
                              "assets/icons/alif_vulume.svg",
                            ),
                          ),
                          SizedBox(width: 14),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: Color(0xFFADADAD),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  "assets/icons/alif_play.svg",
                                  color: AppTheme.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 14),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: Color(0xFFADADAD),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  "assets/icons/alif_valume_fill.svg",
                                  color: AppTheme.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
                    index == 4
                        ? Container()
                        : Container(
                            height: 0.6,
                            color: Color(0xFFCCCCCC),
                          )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
