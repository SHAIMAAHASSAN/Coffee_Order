import 'package:coffee_order/main.dart';
import 'package:coffee_order/screen/home.dart';
import 'package:coffee_order/screen/login.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  ImageProvider image;
  String name;
  String price;
  CartScreen(this.image, this.name, this.price);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.brown[200],
      ),
      margin: EdgeInsets.all(7),
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(50, 50, 100, 10),
              padding: EdgeInsets.all(7),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(image: image))),
          Padding(
            padding: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black54,
                    decoration: TextDecoration.none,
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      price,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                        decoration: TextDecoration.none,
                      ),
                    )),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.brown[200],
                      ),
                      child: const Text(
                        'CANCEL',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        RouteSettings routeSettings =
                            RouteSettings(arguments: {"text": ""});

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyApp(),
                            settings: routeSettings,
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
//
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.brown,
                      ),
                      child: const Text('Add Cart'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                                            builder: (context) =>LoginScreen(),
                        ));

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(

                            padding: EdgeInsets.all(10),
                            backgroundColor: Colors.brown[400],
                            content: Text(
                              'You should login first.',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30),
                            ),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                    ),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
