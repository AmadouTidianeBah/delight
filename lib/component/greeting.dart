import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Pain",
              style: TextStyle(
                  color: Colors.green[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 8,),
            const Text(
              "Order & Eat",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.green.shade500,
                  width: 4
              ),
              shape: BoxShape.circle
          ),
          child: const CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage("asset/images/pain.jpg")
          ),
        )
      ],
    );
  }
}
