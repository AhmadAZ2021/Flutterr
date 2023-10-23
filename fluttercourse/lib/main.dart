// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[400],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/cat.jpg'),
              ),
              Text(
                'BADASS CATTO',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    fontFamily: 'Arima'),
              ),
              Text(
                'Job : Baddass Catto',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),

              // ignore: avoid_unnecessary_containers
              SizedBox(
                height: 20.0,
                width: 300.0,
                child: Divider(color: Colors.black),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.cyan[700],
                  ),
                  title: Text(
                    '+412 123 445 878',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        fontFamily: 'Arima'),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                // ignore: prefer_const_literals_to_create_immutables
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.cyan[700],
                  ),
                  title: Text(
                    'baddasscatto123@meow.com',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        fontFamily: 'Arima'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
