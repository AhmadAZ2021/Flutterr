import 'package:flutter/material.dart';

class OptionsItem extends StatelessWidget {
  final String title;
  final String imagePath;

  OptionsItem(this.title, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.bottomCenter,
          child: Text(
            title,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
          ),
        )
      ],
    );
  }
}
