import 'package:coffee_order/screen/cartScreen.dart';
import 'package:coffee_order/widget/coffee_card.dart';
import 'package:flutter/material.dart';

import '../model/drinks.dart';
class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2,

      // padding: const EdgeInsets.all(5.0),
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      childAspectRatio: 4.0 / 5.0,
      children: Drinks
          .map((Data) => CartScreen(Data.image, Data.name, Data.price))
          .toList(),


    );
  }
}
