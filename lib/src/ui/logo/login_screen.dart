import 'package:al_quran/src/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 38),
        children: [
          SizedBox(height: 56),
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width-76,
            child: Text(
              "Logo",
              style: TextStyle(
                color: Colors.black,
                fontSize: 48,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.2,
                fontFamily: AppTheme.fontPoppins,
              ),
            ),
          )
        ],
      ),
    );
  }
}
