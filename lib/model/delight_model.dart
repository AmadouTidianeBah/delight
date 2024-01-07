import 'package:delight/model/popular.dart';
import 'package:flutter/material.dart';

import 'category.dart';

class DelightModel extends ChangeNotifier {
  List<Category> categories = [
    Category(imgPath: "asset/images/cat_1.png", name: "Pizza", cardColor: Colors.red.shade50),
    Category(imgPath: "asset/images/cat_2.png", name: "Burger", cardColor: Colors.purple.shade50),
    Category(imgPath: "asset/images/cat_3.png", name: "Hot dog", cardColor: Colors.blue.shade50),
    Category(imgPath: "asset/images/cat_4.png", name: "Drink", cardColor: Colors.grey.shade50),
    Category(imgPath: "asset/images/cat_5.png", name: "Donut", cardColor: Colors.orange.shade50),
  ];
  List<Popular> popular = [
    Popular(name: "Pepperoni pizza", imgPath: "asset/images/pizza.png", price: 9.76, number: 0, ),
    Popular(name: "Cheese Burger", imgPath: "asset/images/pop_2.png", price: 8.79, number: 0),
    Popular(name: "Vegetable pizza", imgPath: "asset/images/pop_1.png", price: 8.5, number: 0),
    Popular(name: "Italian pizza", imgPath: "asset/images/pop_3.png", price: 8.76, number: 0),
  ];
  List<Popular> getPopular() {
    return popular;
  }
  List<Popular> userCart = [];
  List<Popular> getUserCart() {
    return userCart;
  }
  double cartTotal = 0.0;
  double itemsTotal = 0.0;
  double tax = 1.5;
  double deliveryService = 10.0;

  void addItemToCart(int index) {
    var temp = popular[index];
    temp.number++;
    temp.totalPrice = temp.price * temp.number;
    userCart.add(temp);
    var seen = <Popular>{};
    userCart = userCart.where((element) => seen.add(element)).toList();
    calculateTotalForAdd();
    notifyListeners();
  }
  void addItem(int index) {
    if(userCart[index].number < 10) {
      userCart[index].number++;
      userCart[index].totalPrice = userCart[index].number * userCart[index].price;
      calculateTotalForAdd();
    }
    notifyListeners();
  }
  void deleteItem(int index) {
    if(userCart[index].number > 1) {
      userCart[index].number--;
      userCart[index].totalPrice = userCart[index].number * userCart[index].price;
      calculateTotalForRemove();
    } else {
      userCart[index].number--;
      userCart[index].totalPrice = userCart[index].number * userCart[index].price;
      calculateTotalForRemove();
      if(userCart.isEmpty) resetTotal();
      userCart.removeAt(index);
    }
    notifyListeners();
  }
  void calculateTotalForAdd() {
    var temp = 0.0;
    for(var item in userCart) {
      temp += item.totalPrice!;
    }
    itemsTotal = temp;
    cartTotal = itemsTotal + tax + deliveryService;
    temp = 0.0;
  }
  void calculateTotalForRemove() {
    var temp = 0.0;
    for(var item in userCart) {
      temp -= item.totalPrice!;
    }
    itemsTotal = temp.abs();
    cartTotal = itemsTotal + tax + deliveryService;
    temp = 0.0;
  }
  void resetTotal() {
    itemsTotal = 0.0;
    cartTotal = 0.0;
  }
}