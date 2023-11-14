import 'package:date_classifier/screens/main_screen.dart';
import 'package:date_classifier/widgets/my_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = 'welcome_screen';
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('images/Classification_icon.png'),
                ),
                Text(
                  'Date Classifier',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Colors.blue[800]),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MyButton(
              color: Colors.green[400]!,
              title: "Start",
              onPressed: () {
                Navigator.of(context).pushNamed(MainScreen.screenRoute);
              },
            ),
            SizedBox(
              height: 10,
            ),
            MyButton(
              color: Colors.blue[400]!,
              title: "Visit Our Website!",
              onPressed: () {
                Navigator.of(context).pushNamed(MainScreen.screenRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}
