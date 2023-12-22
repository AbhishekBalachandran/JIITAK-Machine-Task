import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machine_task/utils/constants/color_constants/color_constants.dart';
import 'package:machine_task/view/first_page/first_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  final List pages = [
    FirstPage(),
    Center(
      child: Text('Job Page'),
    ),
    Center(
      child: Text('Scan Page'),
    ),
    Center(
      child: Text('Chat Page'),
    ),
    Center(
      child: Text('My Page'),
    ),
  ];
  final Color selectedItemColor = ColorConstants.bannerColor;
  final Color unSelectedItemColor = ColorConstants.primaryBlack;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: selectedItemColor,
        unselectedItemColor: unSelectedItemColor,
        elevation: 0,
        iconSize: 32,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: 'さがす'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business_center), label: 'お仕事'),
          BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: ColorConstants.bannerGradient,
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight)),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.transparent,
                  child: Image.asset('assets/icons/scan-line.png'),
                ),
              ),
              label: 'さがす'),
          BottomNavigationBarItem(
              icon: Image(
                  color: selectedIndex == 3
                      ? selectedItemColor
                      : unSelectedItemColor,
                  width: 28,
                  image: AssetImage("assets/icons/typing.png")),
              label: 'チャット'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: 'マイページ')
        ],
      ),
    );
  }
}
