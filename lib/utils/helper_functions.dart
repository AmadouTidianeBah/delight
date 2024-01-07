import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../model/delight_model.dart';

void addItemToCart(BuildContext context, int index) {
  Provider.of<DelightModel>(context, listen: false).addItemToCart(index);
  showDialog(context: context, builder: (context) => AlertDialog(
    content: const Text("Added successful", style: TextStyle(
      color: Colors.white
    ),),
    backgroundColor: Colors.green[500],
  ),);
}

void addItem(BuildContext context, int index) {
  Provider.of<DelightModel>(context, listen: false).addItem(index);
}

void deleteItem(BuildContext context, int index) {
  Provider.of<DelightModel>(context, listen: false).deleteItem(index);
}