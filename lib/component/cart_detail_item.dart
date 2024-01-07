import 'package:flutter/material.dart';

class CartDetailItem extends StatelessWidget {
  final String description;
  final double amount;
  double? textSize = 16;
  CartDetailItem({
    super.key,
    required this.description,
    required this.amount,
    this.textSize
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            description,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: textSize
            ),
          ),
          Text(
            "\$${amount.toStringAsFixed(2)}",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: textSize
            ),
          )
        ],
      ),
    );
  }
}
