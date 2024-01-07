import 'package:delight/component/cart_detail.dart';
import 'package:delight/component/cart_item.dart';
import 'package:delight/model/delight_model.dart';
import 'package:delight/model/popular.dart';
import 'package:delight/utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green.shade100,
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              const Text(
                "My Cart",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
              Expanded(
                child: Consumer<DelightModel>(builder: (context, value, child) => ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                    Popular popular = value.getUserCart()[index];
                    return CartItem(
                      popular: popular,
                      onAdd: () => addItem(context, index),
                      onRemove: () => deleteItem(context, index),
                    );
                  },
                ),),
              ),
              Consumer<DelightModel>(builder: (context, value, child) => CartDetail(
                itemsTotal: value.itemsTotal,
                cartTotal: value.cartTotal,
                deliveryService: value.deliveryService,
                tax: value.tax
              )),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green[500],
                    borderRadius: const BorderRadius.all(Radius.circular(16))
                  ),
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(top: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Check out",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
