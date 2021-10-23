import 'package:al_quran/src/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 220,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              left: 16,
              top: 54,
              right: 16,
              bottom: 16,
            ),
            decoration: BoxDecoration(
              color: AppTheme.bgColorOwe,
              borderRadius: BorderRadius.circular(12),
            ),
          ),

        ],
      ),
    );
  }
}
