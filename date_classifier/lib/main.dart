import 'package:date_classifier/models/classes.dart';
import 'package:date_classifier/screens/about.dart';
import 'package:date_classifier/screens/classes_details.dart';
import 'package:date_classifier/screens/classes_info.dart';
import 'package:date_classifier/screens/contact_us.dart';
import 'package:date_classifier/screens/main_screen.dart';
import 'package:date_classifier/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Date Classifier',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      // home: WelcomeScreen(),
      initialRoute: 'welcome_screen',
      routes: {
        WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
        MainScreen.screenRoute: (context) => MainScreen(),
        AboutPage.screenRoute: (context) => AboutPage(),
        ContactUs.screenRoute: (context) => ContactUs(),
        ClassesInfoPage.screenRoute: (context) => ClassesInfoPage(),
        ClassesDetails.screenRoute: (context) => ClassesDetails(
              classDetails: classes[
                  0], // Example, provide the desired instance of dateclasses
            ),
      },
    );
  }
}
