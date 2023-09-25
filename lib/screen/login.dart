import 'package:flutter/material.dart';

import '../main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(40),
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Image(image: AssetImage("images/logo.jpg")),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: const InputDecoration(
                    filled: true,
                    labelText: 'Username',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: const InputDecoration(
                    filled: true,
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: const Text(
                        'CANCEL',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.brown[200],
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    ElevatedButton(
                      child: const Text('NEXT'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.brown,
                      ),
                      onPressed: () {
                        RouteSettings routeSettings =
                            RouteSettings(arguments: {"text"});

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyApp(),
                            settings: routeSettings,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
