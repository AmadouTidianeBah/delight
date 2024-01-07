import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final Color cardColor;
  const CategoryItem({
    super.key,
    required this.imagePath,
    required this.name,
    required this.cardColor
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        decoration: BoxDecoration(
            color: cardColor,
            borderRadius: const BorderRadius.all(Radius.circular(12))
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              width: 48,
            ),
            const SizedBox(height: 12,),
            Text(
              name,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
              ),
            )
          ],
        ),
      ),
    );
  }
}
