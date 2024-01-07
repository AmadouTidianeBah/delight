import 'dart:ffi';

import 'package:delight/component/cart_detail_item.dart';
import 'package:flutter/material.dart';

class CartDetail extends StatelessWidget {
  final double itemsTotal;
  final double cartTotal;
  final double deliveryService;
  final double tax;
  const CartDetail({
    super.key,
    required this.itemsTotal,
    required this.cartTotal,
    required this.deliveryService,
    required this.tax
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CartDetailItem(
          description: "Items Total:",
          amount: itemsTotal,
        ),
        CartDetailItem(
          description: "Delivery Services:",
          amount: deliveryService,
        ),
        CartDetailItem(
          description: "Tax:",
          amount: tax,
        ),
        CartDetailItem(
          description: "Total:",
          amount: cartTotal,
          textSize: 24,
        ),
      ],
    );
  }
}
