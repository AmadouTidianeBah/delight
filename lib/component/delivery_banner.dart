import 'package:delight/component/delight_btn.dart';
import 'package:flutter/material.dart';

class DeliveryBanner extends StatelessWidget {
  const DeliveryBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.green[300],
          borderRadius: const BorderRadius.all(Radius.circular(12))
      ),
      padding: const EdgeInsets.fromLTRB(8, 16, 4, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "asset/images/image_banner.png",
            width: 240,
          ),
          Column(
            children: [
              const Text(
                "Free Delivery",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                ),
              ),
              const SizedBox(height: 4,),
              const Text(
                  "May 2 - June 10"
              ),
              const SizedBox(height: 16,),
              DelightButton(textBtn: "Order Now", widthBtn: 100, onTap: () {  },),
            ],
          )
        ],
      ),
    );
  }
}
