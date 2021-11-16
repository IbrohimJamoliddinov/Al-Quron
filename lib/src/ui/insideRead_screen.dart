import 'package:al_quran/src/models/qazo_model.dart';
import 'package:al_quran/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InsideReadScreen extends StatefulWidget {
  const InsideReadScreen({Key? key}) : super(key: key);

  @override
  _InsideReadScreenState createState() => _InsideReadScreenState();
}

class _InsideReadScreenState extends State<InsideReadScreen> {
  List<QazoModel> qazoList = [
    QazoModel(name: "Bomdot", number: 420),
    QazoModel(name: "Peshin", number: 10215),
    QazoModel(name: "Asr", number: 216),
    QazoModel(name: "Shom", number: 408),
    QazoModel(name: "Xufton", number: 487),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.dadada,
        leadingWidth: 70,
        leading: Container(
          padding: EdgeInsets.only(left: 8),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/arrow_left_bold.svg"),
              SizedBox(
                width: 4,
              ),
              Text(
                "Back",
                style: TextStyle(
                  fontFamily: AppTheme.fontPoppins,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 17,
                  color: AppTheme.black,
                ),
              ),
            ],
          ),
        ),
        title: Center(
          child: Text(
            "Qazo",
            style: TextStyle(
              fontFamily: AppTheme.fontPoppins,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              fontSize: 17,
              color: AppTheme.black,
            ),
          ),
        ),
        actions: [
          SizedBox(
            width: 16,
          ),
          SvgPicture.asset("assets/icons/settings.svg"),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 24),
            child: Text(
              "Total number",
              style: TextStyle(
                fontFamily: AppTheme.fontPoppins,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize: 17,
                color: Color(0xFF6C6C6C),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8, left: 24, right: 24),
            width: MediaQuery.of(context).size.width,
            height: 108,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppTheme.dadada,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12, left: 24, right: 24),
            child: Text(
              "Calculation of the hijriy date may be differ 1 till 4 days interval by the reason of moon days",
              style: TextStyle(
                fontFamily: AppTheme.fontPoppins,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                fontSize: 15,
                color: Color(0xFF989898),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: qazoList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                  top: 16,
                  left: 24,
                  right: 24,
                ),
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                    // color: AppTheme.backWhite,
                    ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          qazoList[index].name,
                          style: TextStyle(
                            fontFamily: AppTheme.fontPoppins,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xFF767676),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 48,
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 120,
                                    height: 44,
                                    decoration: BoxDecoration(
                                      color: AppTheme.dadada,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    qazoList[index].number.toString(),
                                    style: TextStyle(
                                      fontFamily: AppTheme.fontPoppins,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15,
                                      color: Color(0xFF404040),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Container(
                                    width: 38,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE7E7E7),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: SvgPicture.asset(
                                      "assets/icons/minus.svg",
                                      width: 12,
                                      height: 12,
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    width: 38,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE7E7E7),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: SvgPicture.asset(
                                      "assets/icons/plus2.svg",
                                      width: 12,
                                      height: 12,
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
