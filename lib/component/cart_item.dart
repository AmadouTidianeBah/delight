import 'package:delight/component/delight_btn.dart';
import 'package:delight/model/popular.dart';
import 'package:delight/utils/helper_functions.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  Popular popular;
  void Function()? onAdd;
  void Function()? onRemove;
  CartItem({
    super.key,
    required this.popular,
    required this.onAdd,
    required this.onRemove
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.green.shade200,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: Colors.green.shade900,
              blurRadius: 4
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  popular.imgPath,
                  width: 92,
                ),
                const SizedBox(width: 4,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      popular.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                    const SizedBox(height: 16,),
                    Row(
                      children: [
                        DelightButton(
                          textBtn: "-",
                          widthBtn: 30,
                          onTap: onRemove,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: DelightButton(textBtn: popular.number.toString(), widthBtn: 50, onTap: () {},),
                        ),
                        DelightButton(
                          textBtn: "+",
                          widthBtn: 30,
                          onTap: onAdd,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            Column(
              children: [
                Text(
                  "\$${popular.price}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.grey.shade600
                  ),
                ),
                const SizedBox(height: 20,),
                Text(
                  "\$${popular.totalPrice?.toStringAsFixed(2)}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    color: Colors.green[800]
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
