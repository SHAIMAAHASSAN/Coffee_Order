import 'package:animated_rating_bar/animated_rating_bar.dart';
import 'package:coffee_order/screen/login.dart';

import 'package:flutter/material.dart';

import '../screen/cartScreen.dart';

class FloatingButton extends StatelessWidget {
  FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.favorite,
          color: Colors.red,
        ),
      ),
      //body: CoffeeCard(),
    );
  }
}

class CoffeeCard extends StatefulWidget {
  ImageProvider image ;
  String name;
  String price;
  CoffeeCard({super.key,required this.image,required this.name,required this.price});

  @override
  State<CoffeeCard> createState() => _CoffeeCardState();
}

class _CoffeeCardState extends State<CoffeeCard> {
  int _cartItems = 0;

  void _incrementCartItems() {
    setState(() {
      _cartItems++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[400],
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image(
              height: 200, width: 200, image:widget.image),
          SizedBox(
            height: 15,
            width: 15,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.name,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child:AnimatedRatingBar(initialRating: 0,animationColor: Colors.yellow,
                    activeFillColor:Colors.yellow ,
                    onRatingUpdate: (double value) {  },),

                  /* Row(
                    children: List.generate(
                        5,
                        (index) => RatingStar(
                              selected: index < 3,
                              onTap: () {
                                // Handle rating change here.
                              },
                            )),
                  ),*/
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text( widget.price),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        width: 150,

                        child: Center(
                          child:ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.brown,
                              ),
                              onPressed: (){
                                _incrementCartItems();
                                if(_cartItems>0){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => CartScreen(widget.image, widget.name, widget.price),
                                      ));
                                }
                               //
                              }, child:Text(
                            'Add to cart',
                           style: TextStyle(color: Colors.white), )

                          // Text(
                          //  'Add to cart',
                           // style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      // Icon(
                      //   Icons.favorite,
                      //   color: Colors.red,
                      //  ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
