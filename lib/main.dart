import 'package:al_quran/src/ui/home/inside_reciters.dart';
import 'package:al_quran/src/ui/home/reciters.dart';
import 'package:al_quran/src/ui/home/setting_time.dart';
import 'package:al_quran/src/ui/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Al Quran',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        platform: TargetPlatform.iOS,
      ),
      home: SettingTime(),
    );
  }
}

