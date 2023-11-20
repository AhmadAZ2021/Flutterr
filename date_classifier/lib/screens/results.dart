import 'package:flutter/material.dart';
import 'dart:convert';


class results extends StatefulWidget {

  static const String screenRoute = '/results';
  const results({super.key});

  @override
  State<results> createState() => _resultsState();
}

class _resultsState extends State<results> {
  Map<String, dynamic>? issa = {};
  @override
  Widget build(BuildContext context) {
    issa = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    print(issa);

    String className = issa?['result'] ?? 'N/A';
    String confidence = issa?['confidence'] ?? 0.0;
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
        ),
      ),
      title: Center(child: Text('Image Classification Result')),
    ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Class Name:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                className,
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
              SizedBox(height: 20),
              Text(
                'Confidence:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '$confidence',
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamedAndRemoveUntil(context, ('/classify'), (route) => false);
        },
        child: Text('Back'),
      ),
    );
  }
}