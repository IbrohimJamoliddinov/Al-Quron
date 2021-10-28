import 'package:al_quran/src/models/most_listened.dart';
import 'package:al_quran/src/models/qori_title.dart';
import 'package:al_quran/src/models/tur_model.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:al_quran/src/widgets/title_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecitersScreen extends StatefulWidget {
  @override
  _RecitersScreenState createState() => _RecitersScreenState();
}

class _RecitersScreenState extends State<RecitersScreen> {
  int _selektedIndex = 1;

  List<QoriModel> dataProfil = [
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

  List<TurScreen> dataTurlar = [
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
            width: MediaQuery.of(context).size.width,
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
          Expanded(
            child: ListView(
              children: [
                TitleWidget(
                  leftSize: 22,
                  colorLeft: AppTheme.dark,
                  textLeft: "Most listened",
                  margin: EdgeInsets.only(
                    right: 24,
                    left: 24,
                    top: 18,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  height: 112,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dataListen.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 108,
                        width: 84,
                        margin: EdgeInsets.only(right: 16),
                        child: Column(
                          children: [
                            Image.asset(
                              dataListen[index].image,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              dataListen[index].name,
                              style: TextStyle(
                                color: AppTheme.dark,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.2,
                              ),
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 24),
                  height: 22,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xFFC4C4C4),
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: ListView.builder(
                    itemCount: dataTurlar.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, turlar) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selektedIndex = turlar;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 24),
                          padding: EdgeInsets.only(bottom: 2),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: _selektedIndex == turlar
                                ? Color(0xFF4B4B4B)
                                : Colors.transparent,
                            width: 1,
                          ))),
                          child: Text(
                            dataTurlar[turlar].name,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: _selektedIndex == turlar
                                  ? Color(0xFF4B4B4B)
                                  : Color(0xFFC4C4C4),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      itemCount: 4,
                      itemBuilder: (context, value) {
                        return Container(
                          margin: EdgeInsets.only(top: 8),
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 24),
                                padding: EdgeInsets.only(top: 8),
                                height: 108,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFFCDCDCD),
                                ),
                                child: Row(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Spacer(),
                                    Container(
                                      width: 210,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                child: Text(
                                                  dataProfil[value].name,
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18,
                                                    letterSpacing: 0.2,
                                                  ),
                                                ),
                                                width: 180,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                                size: 24,
                                              ),
                                            ],
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                          ),
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
                                          Container(
                                            width: 110,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 6, vertical: 4),
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
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Text(
                                                  " Yusuf Ali",
                                                  style: TextStyle(
                                                    color: Color(0xFF6F6F6F),
                                                    fontSize: 14,
                                                    letterSpacing: 0.2,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    dataProfil[value].image,
                                  ),
                                ),
                                margin: EdgeInsets.only(
                                  top: 16,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
