import 'package:al_quran/src/ui/home/home_screen.dart';
import 'package:al_quran/src/ui/learn/learn_screen.dart';
import 'package:al_quran/src/ui/quran/quran_screen.dart';
import 'package:al_quran/src/ui/more/more_screen.dart';
import 'package:al_quran/src/ui/tasbeh/tasbeh_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  List<Widget> data = [
    HomeScreen(),
    LearnScreen(),
    QuranScreen(),
    TasbehScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: data[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: Color(0xFF007AFF),
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 10,
        ),
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              height: 24,
              width: 24,
              child: SvgPicture.asset(
                "assets/menu/home.svg",
                color: selectedIndex == 0 ? Color(0xFF0A84FF) : Colors.grey,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 24,
              width: 24,
              child: Center(
                child: SvgPicture.asset(
                  "assets/menu/learn.svg",
                  color: selectedIndex == 1 ? Color(0xFF0A84FF) : Colors.grey,
                ),
              ),
            ),
            label: "Learn",
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 24,
              width: 24,
              child: Center(
                child: SvgPicture.asset(
                  "assets/menu/quran.svg",
                  color: selectedIndex == 2 ? Color(0xFF0A84FF) : Colors.grey,
                ),
              ),
            ),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 24,
              width: 24,
              child: Center(
                child: SvgPicture.asset(
                  "assets/menu/tasbeh.svg",
                  color: selectedIndex == 3 ? Color(0xFF0A84FF) : Colors.grey,
                ),
              ),
            ),
            label: "Tasbeh",
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 24,
              width: 24,
              child: Center(
                child: SvgPicture.asset(
                  "assets/menu/more.svg",
                  color: selectedIndex == 4 ? Color(0xFF0A84FF) : Colors.grey,
                ),
              ),
            ),
            label: "More",
          ),
        ],
      ),
    );
  }
}
