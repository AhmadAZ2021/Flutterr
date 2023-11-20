import 'package:date_classifier/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';



void pickimage () {
  print('pick image');
}

class classification extends StatefulWidget {
  static const String screenRoute = '/classify';
  const classification({super.key});

  @override
  State<classification> createState() => _classificationState();
}

class _classificationState extends State<classification> {
  File? _image;

  Future _getImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        Navigator.pushNamed(context, '/image_view',arguments: _image);
      } else {
        print('No image selected.');
      }
    });
  }
  Future _getImageFromCamera() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        Navigator.pushNamed(context, '/image_view',arguments: _image);
      } else {
        print('No image captured.');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50),
          ),
        ),
        title: Center(child: Text('Date Classifier'),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, MainScreen.screenRoute);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,    
          children: <Widget>[
            Container(
              width: 200, // Adjust the width as needed
              height: 250, // Adjust the height as needed
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(10.0),right: Radius.circular(10.0)), // Adjust the border radius as needed
                image: DecorationImage(
                  image: AssetImage('images/R.png'), // Add your avatar image here
                  //fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: (){
                _getImageFromGallery();
              },
              icon: Icon(
                Icons.image,
              ),
              label: Text('upload image'),
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(200, 50)),
              ),
            ),
            SizedBox(height: 10.0,),
            ElevatedButton.icon(
              onPressed: (){
                _getImageFromCamera();
              },
              icon: Icon(
                Icons.camera_alt_outlined,
              ),
              label: Text('take image'),
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(Size(200, 50)),
              ),
            ),
          ],
        ),
      ),
      );
  }
}

