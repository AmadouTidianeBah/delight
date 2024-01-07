import 'package:delight/model/delight_model.dart';
import 'package:delight/model/popular.dart';
import 'package:delight/utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'delight_btn.dart';

class PopularItem extends StatelessWidget {
  Popular popular;
  void Function()? onTap;
  PopularItem({
    super.key,
    required this.popular,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            color: Colors.green[200]
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text(
              popular.name,
              style: const TextStyle(
                  fontSize: 16
              ),
            ),
            const SizedBox(height: 12,),
            Image.asset(
              popular.imgPath,
              width: 72,
            ),
            const SizedBox(height: 12,),
            Text(
              "\$${popular.price}",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 16,),
            DelightButton(
              textBtn: "Add",
              widthBtn: 74,
              onTap: onTap,
            ),
          ],
        ),
      ),
    );
  }
}
