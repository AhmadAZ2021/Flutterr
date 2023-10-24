// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Center(child: Text('Matching game')),
          backgroundColor: Colors.indigo[800],
        ),
        body: ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftimage = 1;
  int rightimage = 3;
  void changeimages() {
    leftimage = Random().nextInt(8) + 1;
    rightimage = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text(
          leftimage == rightimage
              ? ('Congrats you won')
              : "click to match the pictures",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(
                // flex:
                //     2, //a property of Expanded widget and determines the usage and sharing of the remaining space between children widgets
                child: TextButton(
                  onPressed: () {
                    print('left picture clicked');
                    setState(() {
                      changeimages();
                    });
                  },
                  child: Image.asset('images/image-$leftimage.png'),
                ),
              ),
              Expanded(
                // flex: 1,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        changeimages();
                      });
                      print('right picture clicked');
                    },
                    child: Image.asset('images/image-$rightimage.png')),
              ),
            ],
          ),
        )
      ],
    );
  }
}
