// contact_us_page.dart

import 'dart:ffi';

import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  static const String screenRoute = '/contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
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
                            Navigator.pop(
                                context); // Navigate back to the dashboard
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
                    'Contact Us',
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
          const SizedBox(height: 20),
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
                        blurRadius: 5)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.phone,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+9612345',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.email,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'ABCD@gmail.com',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      )
                    ],
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
