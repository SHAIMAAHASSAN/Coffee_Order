import 'package:coffee_order/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.brown[100],
        body: Center(
          child: Container(

            margin: EdgeInsets.all(100),
            child: Column(
              children: [
                Image(
                  fit: BoxFit.cover,
                  image: AssetImage('images/logo.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Welcome in Flutter Coffee",
                    style: TextStyle(fontSize: 36, color: Colors.brown[400]),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyApp(),
                          ));
                    },
                    child: Text(
                      "Welcome",
                      style: TextStyle(backgroundColor: Colors.brown),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
