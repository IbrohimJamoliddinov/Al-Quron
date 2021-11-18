import 'package:al_quran/src/models/names_99.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NamesScreen extends StatefulWidget {
  @override
  _NamesScreenState createState() => _NamesScreenState();
}

class _NamesScreenState extends State<NamesScreen> {
  List<NamesModel> dataName = [
    NamesModel(names: "Ar-Rahman"),
    NamesModel(names: "Ar-Rahim"),
    NamesModel(names: "Ar-Malik"),
    NamesModel(names: "Ar-Quddus"),
    NamesModel(names: "Ar-Salam"),
    NamesModel(names: "Ar-Mu'min"),
    NamesModel(names: "Ar-Muhaymin"),
    NamesModel(names: "Ar-’Aziz"),
    NamesModel(names: "Ar-’Aziz"),
    NamesModel(names: "Ar-’Aziz"),
    NamesModel(names: "Ar-’Aziz"),
    NamesModel(names: "Ar-’Aziz"),
    NamesModel(names: "Ar-’Aziz"),
    NamesModel(names: "Ar-’Aziz"),
    NamesModel(names: "Ar-’Aziz"),
    NamesModel(names: "Ar-’Aziz"),
    NamesModel(names: "Ar-’Aziz"),
    NamesModel(names: "Ar-’Aziz"),
    NamesModel(names: "Ar-’Aziz"),
    NamesModel(names: "Ar-’Aziz"),
    NamesModel(names: "Ar-’Aziz"),
    NamesModel(names: "Ar-’Aziz"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECECEC),
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
          "99 Names",
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
          CarouselSlider(
            options: CarouselOptions(
              height: 220.0,
              viewportFraction: 0.94,
            ),
            items: [1, 2, 3].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                        top: 20, bottom: 20, left: 12, right: 12),
                    height: 178,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xFFE2E2E2),
                        borderRadius: BorderRadius.circular(12)),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.only(right: 12, top: 12),
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Color(0xFFC4C4C4),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/polygon.svg",
                        color: Colors.grey,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListView.builder(
                  itemCount: dataName.length,
                  itemBuilder: (context, index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            (index + 1).toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontFamily: AppTheme.fontPoppins,
                              letterSpacing: 0.16,
                              color: Color(0xFF989898),
                            ),
                          ),
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            height: 64,
                            padding: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: index + 1 == dataName.length
                                      ? Colors.white
                                      : Color(0xFFDBDBDB),
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    dataName[index].names,
                                    style: TextStyle(
                                      color: Color(0xFF3D3D3D),
                                      fontFamily: AppTheme.fontPoppins,
                                      fontSize: 18,
                                      letterSpacing: 0.2,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 104,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFB5B5B5),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
