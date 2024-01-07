import 'package:flutter/material.dart';

class DelightButton extends StatelessWidget {
  final String textBtn;
  final double widthBtn;
  void Function()? onTap;
  DelightButton({super.key, required this.textBtn, required this.widthBtn, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: widthBtn,
        decoration: BoxDecoration(
            color: Colors.green[500],
            borderRadius: const BorderRadius.all(Radius.circular(16))
        ),
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Text(
            textBtn,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
