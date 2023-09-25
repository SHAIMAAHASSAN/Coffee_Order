import 'package:coffee_order/screen/home.dart';
import 'package:coffee_order/screen/login.dart';
import 'package:coffee_order/screen/menuScreen.dart';
import 'package:coffee_order/widget/coffee_card.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import 'model/drinks.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home,color: Colors.brown,),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: badges.Badge(child: Icon(Icons.notification_add_rounded),
      badgeContent: Text("5",style: TextStyle(color: Colors.white),),),
      label: 'Notification',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'login',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/logo.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Coffee Order"),
              ),
            ],
          ),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => MenuScreen(),
              ));
            },
          ),
          actions: [

            badges.Badge(
              child: IconButton(
                icon: Icon(Icons.shopping_cart_sharp),
                onPressed: () {},
              ),
              badgeContent: Text("0",style: TextStyle(color: Colors.white),)
              ,
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: MyyHomePage(),
        bottomNavigationBar: Container(
            width: 50,
            height: 50,
            child: BottomNavigationBar(
              items: items,
              backgroundColor: Colors.brown[200],
              iconSize: 20,
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.brown,
              currentIndex: 0,
              onTap: (index) {
                if (index == 0) {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
                }
                if (index == 1) {

                }
                if (index == 2) {
                Navigator.push(context, MaterialPageRoute(
                builder: (context) => LoginScreen(),
                ));
                }
                // Navigate to the corresponding screen here.
              },

            )),
      );

  }
}

class MyyHomePage extends StatefulWidget {
  const MyyHomePage({super.key});

  @override
  State<MyyHomePage> createState() => _MyyHomePageState();
}

class _MyyHomePageState extends State<MyyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.brown[100],
        child: ListView.builder(
            itemCount: Drinks.length,
            itemBuilder: (context, index) {
              return CoffeeCard(
                  image: Drinks[index].image,
                  name: Drinks[index].name,
                  price: Drinks[index].price);
            }));
  }
}
class ShoppingCartIcon extends StatelessWidget {
  final int cartItems;

  const ShoppingCartIcon({Key? key, required this.cartItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return badges.Badge(

      child: Icon(Icons.shopping_cart),
    badgeContent: Text("0",style: TextStyle(color: Colors.white),
    ));
  }
}