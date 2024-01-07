import 'package:flutter/material.dart';

class BottomNavigationItem extends StatelessWidget {
  final IconData icon;
  final String name;
  const BottomNavigationItem({
    super.key,
    required this.icon,
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.green[800],),
        Text(name, style: TextStyle(color: Colors.green[800]),),
      ],
    );
  }
}
