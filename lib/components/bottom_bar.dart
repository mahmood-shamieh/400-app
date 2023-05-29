import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:fourhundred_app/materials.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: 1,
      showElevation: true, // use this to remove appBar's elevation
      onItemSelected: (index) {},
      items: [
        BottomNavyBarItem(
          icon: Icon(Icons.apps),
          title: Text('Home'),
          textAlign: TextAlign.center,
          inactiveColor: iconColor,
          activeColor: primaryColor,
        ),
        BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: Text('Users'),
            inactiveColor: iconColor,
            textAlign: TextAlign.center,
            activeColor: primaryColor),
        BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Messages'),
            inactiveColor: iconColor,
            textAlign: TextAlign.center,
            activeColor: Colors.pink),
        BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            textAlign: TextAlign.center,
            inactiveColor: iconColor,
            activeColor: Colors.blue),
      ],
    );
  }
}
