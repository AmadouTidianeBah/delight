import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.green[200],
          borderRadius: const BorderRadius.all(Radius.circular(12))
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.green[500],),
          const SizedBox(width: 8,),
          Text(
            "Find Your Food",
            style: TextStyle(
                color: Colors.green[500],
                fontStyle: FontStyle.italic
            ),
          )
        ],
      ),
    );
  }
}
