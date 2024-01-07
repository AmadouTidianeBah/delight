import 'package:delight/component/bottom_navigation.dart';
import 'package:delight/component/category_item.dart';
import 'package:delight/component/delivery_banner.dart';
import 'package:delight/component/greeting.dart';
import 'package:delight/component/search_bar.dart';
import 'package:delight/model/delight_model.dart';
import 'package:delight/model/popular.dart';
import 'package:delight/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../component/popular_item.dart';
import '../utils/helper_functions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[100],
        bottomNavigationBar: const BottomNavigation(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green[500],
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage(),)),
          child: const Icon(Icons.shopping_cart_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Greeting(),
              const SizedBox(height: 12,),
              const SearchBar(),
              const SizedBox(height: 16,),
              const DeliveryBanner(),
              const SizedBox(height: 16,),
              const Text(
                "Categories",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 16,),
              SizedBox(
                height: 120,
                child: Consumer<DelightModel>(builder: (context, value, child) => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.categories.length,
                  itemBuilder: (context, index) => CategoryItem(
                    imagePath: value.categories[index].imgPath,
                    name: value.categories[index].name,
                    cardColor: value.categories[index].cardColor
                  ),
                ),)
              ),
              const SizedBox(height: 16,),
              const Text(
                "Popular",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 16,),
              SizedBox(
                height: 210,
                child: Consumer<DelightModel>(builder: (context, value, child) => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.popular.length,
                  itemBuilder: (context, index) {
                    Popular popular = value.getPopular()[index];
                    return PopularItem(
                      popular: popular,
                      onTap:() => addItemToCart(context, index),
                    );
                  },
                ),)
              ),
            ],
          ),
        )
      ),
    );
  }
}
