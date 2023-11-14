// classes_info_page.dart

import 'package:date_classifier/models/classes.dart';
import 'package:date_classifier/widgets/classes_card.dart';
import 'package:date_classifier/screens/classes_details.dart'; // Import the ClassesDetails screen
import 'package:flutter/material.dart';

class ClassesInfoPage extends StatefulWidget {
  static const String screenRoute = '/info';

  @override
  State<ClassesInfoPage> createState() => _ClassesInfoPageState();
}

class _ClassesInfoPageState extends State<ClassesInfoPage> {
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
                    'Classes Details',
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
          Expanded(
            child: ListView.builder(
              itemCount: classes.length,
              itemBuilder: (context, index) => ClassesCard(
                itemIndex: index,
                classes: classes[index],
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ClassesDetails(classDetails: classes[index]),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
