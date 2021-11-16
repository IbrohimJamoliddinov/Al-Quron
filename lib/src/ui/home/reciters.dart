import 'package:al_quran/src/models/most_listened.dart';
import 'package:al_quran/src/models/qori_title.dart';
import 'package:al_quran/src/models/tur_model.dart';
import 'package:al_quran/src/ui/home/inside_reciters.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:al_quran/src/widgets/title_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecitersScreen extends StatefulWidget {
  @override
  _RecitersScreenState createState() => _RecitersScreenState();
}

class _RecitersScreenState extends State<RecitersScreen> {
  int _selectedIndex = 1;

  List<QoriModel> dataProfile = [
    QoriModel(
      image: "assets/images/alAfasiy.png",
      name: "Mishary Rashid Al Afasy",
      taxallus: "Style: Yusuf Ali",
    ),
    QoriModel(
      image: "assets/images/alKurdi.png",
      name: "Muhammad Raad Al Kurdi",
      taxallus: "Style: Yusuf Ali",
    ),
    QoriModel(
      image: "assets/images/alSoudais.png",
      name: "Abdul Rahman Al Soudais",
      taxallus: "Style: Yusuf Ali",
    ),
    QoriModel(
      image: "assets/images/alAfasiy.png",
      name: "Mishary Rashid Al Afasy",
      taxallus: "Style: Yusuf Ali",
    ),
  ];

  List<MostListenScreen> dataListen = [
    MostListenScreen(
      name: "Mishary",
      image: "assets/images/mishary.png",
    ),
    MostListenScreen(
      name: "All Osi",
      image: "assets/images/mishary.png",
    ),
    MostListenScreen(
      name: "Gamidi",
      image: "assets/images/mishary.png",
    ),
    MostListenScreen(
      name: "Muhammadiy",
      image: "assets/images/mishary.png",
    ),
    MostListenScreen(
      name: "Mishary",
      image: "assets/images/mishary.png",
    ),
    MostListenScreen(
      name: "All Osi",
      image: "assets/images/mishary.png",
    ),
  ];

  List<TurScreen> dataType = [
    TurScreen(name: "All"),
    TurScreen(name: "Quraysh"),
    TurScreen(name: "Hudhayl"),
    TurScreen(name: "Tameem"),
    TurScreen(name: "Hawaazin"),
    TurScreen(name: "Tameem"),
    TurScreen(name: "Quraysh"),
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
          "Reciters",
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
              padding: EdgeInsets.only(bottom: 24),
              children: [
                TitleWidget(
                  leftSize: 22,
                  colorLeft: AppTheme.dark,
                  textLeft: "Most listened",
                  margin: EdgeInsets.only(
                    right: 24,
                    left: 24,
                    top: 20,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  height: 112,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 24, right: 8),
                    scrollDirection: Axis.horizontal,
                    itemCount: dataListen.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 84,
                        margin: EdgeInsets.only(right: 16),
                        child: Column(
                          children: [
                            ClipRRect(
                              child: Image.asset(
                                dataListen[index].image,
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(80),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Expanded(
                              child: Text(
                                dataListen[index].name,
                                style: TextStyle(
                                  color: AppTheme.dark,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.2,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 14,
                  ),
                  height: 22,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 24),
                    itemCount: dataType.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, turlar) {
                      return Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = turlar;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 24),
                            padding: EdgeInsets.only(bottom: 2),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: _selectedIndex == turlar
                                      ? Color(0xFF4B4B4B)
                                      : Colors.transparent,
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Text(
                              dataType[turlar].name,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: _selectedIndex == turlar
                                    ? Color(0xFF4B4B4B)
                                    : Color(0xFFC4C4C4),
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFFC4C4C4),
                              width: 0.5,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  itemCount: 4,
                  itemBuilder: (context, value) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return InsideScreen();
                            },
                          ),
                        );
                      },
                      child: Container(
                        height: (MediaQuery.of(context).size.width - 48) *
                            115 /
                            327,
                        margin: EdgeInsets.only(top: 14),
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsets.only(
                                top: 8,
                                bottom: 8,
                                right: 18,
                                left: (MediaQuery.of(context).size.width - 48) *
                                        115 *
                                        90 /
                                        (327 * 114) +
                                    16,
                              ),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xFFCDCDCD),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 2),
                                        Text(
                                          dataProfile[value].name,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            height: 1.4,
                                            letterSpacing: 0.2,
                                          ),
                                        ),
                                        SizedBox(height: 2),
                                        Text(
                                          "114 surah recorded",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            letterSpacing: 0.2,
                                            color: Color(0xFF6F6F6F),
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 8,
                                                vertical: 4,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(8),
                                                color: AppTheme.bgColorToo,
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
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 4,
                                      left: 12,
                                    ),
                                    child: SvgPicture.asset(
                                        "assets/icons/white_star.svg"),
                                  ),
                                ],
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.asset(
                                dataProfile[value].image,
                                height:
                                    (MediaQuery.of(context).size.width - 48) *
                                        115 /
                                        327,
                                width:
                                    (MediaQuery.of(context).size.width - 48) *
                                        115 *
                                        90 /
                                        (327 * 114),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
