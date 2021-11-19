import 'package:al_quran/src/ui/more/sub_more/donate_screen.dart';
import 'package:al_quran/src/ui/more/sub_more/hijr_calendar_screen.dart';
import 'package:al_quran/src/ui/more/sub_more/qiblah/qiblah_compass_screen.dart';
import 'package:al_quran/src/ui/more/sub_more/shahada_screen.dart';
import 'package:al_quran/src/ui/more/sub_more/youtube_screen.dart';
import 'package:al_quran/src/widgets/menu_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'sub_more/names_screen.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoScaffold(
      body: Builder(
        builder: (context) {
          return CupertinoPageScaffold(
            backgroundColor: Colors.white,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color(0xFFDADADA),
                elevation: 0.5,
                title: Text(
                  "More",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(right: 16),
                      child: SvgPicture.asset(
                        "assets/icons/settings.svg",
                      ),
                    ),
                  )
                ],
              ),
              body: ListView(
                padding: EdgeInsets.only(
                  left: 24,
                  top: 20,
                  right: 24,
                  bottom: 24,
                ),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) {
                                    return NamesScreen();
                                  },
                                ),
                              );
                            },
                            child: MenuWidget(
                              name: "99 names",
                              widthBox:
                                  (MediaQuery.of(context).size.width - 66) / 2,
                              heightBox: 120,
                              marginBox: EdgeInsets.only(
                                bottom: 16,
                              ),
                            ),
                          ),
                          MenuWidget(
                            name: "Near Masjid",
                            widthBox:
                                (MediaQuery.of(context).size.width - 66) / 2,
                            heightBox: 180,
                            marginBox: EdgeInsets.only(
                              bottom: 16,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) {
                                    return YoutubeScreen(
                                      id: "g7ZrwTaroAc",
                                    );
                                  },
                                ),
                              );
                            },
                            child: MenuWidget(
                              name: "Live Makkah",
                              widthBox:
                                  (MediaQuery.of(context).size.width - 66) / 2,
                              heightBox: 120,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) {
                                    return ShahadaScreen();
                                  },
                                ),
                              );
                            },
                            child: MenuWidget(
                              name: "Shaxada",
                              widthBox:
                                  (MediaQuery.of(context).size.width - 48) / 2 -
                                      18,
                              heightBox: 180,
                              marginBox: EdgeInsets.only(
                                bottom: 16,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) {
                                    return QiblahCompassScreen();
                                  },
                                ),
                              );
                            },
                            child: MenuWidget(
                              name: "Qibla",
                              widthBox:
                                  (MediaQuery.of(context).size.width - 66) / 2,
                              heightBox: 120,
                              marginBox: EdgeInsets.only(
                                bottom: 16,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) {
                                    return YoutubeScreen(
                                      id: "4GCH7_Gj0ro",
                                    );
                                  },
                                ),
                              );
                            },
                            child: MenuWidget(
                              name: "Live Madina",
                              widthBox:
                                  (MediaQuery.of(context).size.width - 66) / 2,
                              heightBox: 120,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) {
                            return DonateScreen();
                          },
                        ),
                      );
                    },
                    child: MenuWidget(
                      name: "Donate",
                      widthBox: MediaQuery.of(context).size.width - 48,
                      heightBox: 120,
                      marginBox: EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          MenuWidget(
                            name: "Your Donation",
                            widthBox:
                                (MediaQuery.of(context).size.width - 66) / 2,
                            heightBox: 150,
                          ),
                          SizedBox(height: 16),
                          MenuWidget(
                            name: "Contact Us",
                            widthBox:
                                (MediaQuery.of(context).size.width - 66) / 2,
                            heightBox: 150,
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) {
                                return HijrCalendarScreen();
                              },
                            ),
                          );
                        },
                        child: MenuWidget(
                          name: "Islamic Calendar",
                          widthBox:
                              (MediaQuery.of(context).size.width - 66) / 2,
                          heightBox: 250,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
