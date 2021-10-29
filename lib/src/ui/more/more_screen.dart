import 'package:al_quran/src/dialog/bottom_dialog.dart';
import 'package:al_quran/src/widgets/menu_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

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
                    child: Container(
                      margin: EdgeInsets.only(right: 16),
                      child: Icon(
                        Icons.settings_outlined,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      BottomDialog.showSettingsDialog(context);
                    },
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
                            onTap: () {},
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
                          MenuWidget(
                            name: "Live Makkah",
                            widthBox:
                                (MediaQuery.of(context).size.width - 66) / 2,
                            heightBox: 120,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MenuWidget(
                            name: "Shaxada",
                            widthBox:
                                (MediaQuery.of(context).size.width - 48) / 2 -
                                    18,
                            heightBox: 180,
                            marginBox: EdgeInsets.only(
                              bottom: 16,
                            ),
                          ),
                          MenuWidget(
                            name: "Qibla",
                            widthBox:
                                (MediaQuery.of(context).size.width - 66) / 2,
                            heightBox: 120,
                            marginBox: EdgeInsets.only(
                              bottom: 16,
                            ),
                          ),
                          MenuWidget(
                            name: "Live Madina",
                            widthBox:
                                (MediaQuery.of(context).size.width - 66) / 2,
                            heightBox: 120,
                          ),
                        ],
                      ),
                    ],
                  ),
                  MenuWidget(
                    name: "Donate",
                    widthBox: MediaQuery.of(context).size.width - 48,
                    heightBox: 120,
                    marginBox: EdgeInsets.symmetric(vertical: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuWidget(
                        name: "Your Donation",
                        widthBox: (MediaQuery.of(context).size.width - 66) / 2,
                        heightBox: 150,
                      ),
                      MenuWidget(
                        name: "Islamic Calendar",
                        widthBox: (MediaQuery.of(context).size.width - 66) / 2,
                        heightBox: 150,
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
