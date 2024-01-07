import 'package:delight/component/bottom_navigation_item.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.green[200],
      shape: CircularNotchedRectangle(),
      notchMargin: 5,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            BottomNavigationItem(icon: Icons.home, name: "Home"),
            BottomNavigationItem(icon: Icons.person, name: "Profile"),
            BottomNavigationItem(icon: Icons.message, name: "Support"),
            BottomNavigationItem(icon: Icons.settings, name: "Settings"),
          ],
        ),
      ),
    );
  }
}
