// classes_info_page.dart

import 'dart:ffi';

import 'package:date_classifier/models/classes.dart';
import 'package:flutter/material.dart';

class ClassesDetails extends StatefulWidget {
  static const String screenRoute = 'classes_details';
  final dateclasses classDetails;

  const ClassesDetails({Key? key, required this.classDetails})
      : super(key: key);

  @override
  State<ClassesDetails> createState() => _ClassesDetailsState();
}

class _ClassesDetailsState extends State<ClassesDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Row(
                    children: [
                      SizedBox(
                        width: 40,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Date Classifier',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    widget.classDetails.title, // Use the class title here
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Colors.white54),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        color: Theme.of(context).primaryColor.withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 5),
                  ]),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    widget.classDetails.description,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20,),
                Text('Samples Pictures:' , style: TextStyle(color: Colors.black87, fontSize: 15 , fontWeight: FontWeight.bold),),
                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(widget.classDetails.image1 , width: 150 , height: 150, fit: BoxFit.cover,),
                    Image.asset(widget.classDetails.image2 , width: 150 , height: 150,fit: BoxFit.cover,),
                  ],
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
