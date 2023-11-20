import 'package:flutter/material.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';


Future<Map<String, dynamic>> sendImageToServer(File imageFile) async {
  var request = http.MultipartRequest('POST', Uri.parse('http://dukkane.com:8000/api/apiupload/'));
  request.files.add(await http.MultipartFile.fromPath('image', imageFile.path));

  try {
    var response = await request.send();
    if (response.statusCode == 200 || response.statusCode == 201 ) {
      Map<String, dynamic> jsonResponse = json.decode(await response.stream.bytesToString());
      print('Image sent successfully');
      return jsonResponse;
    } else {
      print('Failed to send image. Status code: ${response.statusCode}');
      print('Response body: ${await response.stream.bytesToString()}');
      throw Exception('Failed to send image');
    }
  } catch (error) {
    print('Error sending image: $error');
    throw error;
  }
}

class imageview extends StatefulWidget {
  static const String screenRoute = '/image_view';
  const imageview({super.key});

  @override
  State<imageview> createState() => _imageviewState();
}

class _imageviewState extends State<imageview> {
  File? data;
  Map<String, dynamic> response ={} ;

  Future<void> _uploadImage(context) async {
    try {
      response = await sendImageToServer(data!);
      Navigator.pushNamed(context,'/results', arguments: response);
      // Handle success if needed
    } catch (error) {
      // Handle error
      print('Error uploading image: $error');

    }
  }

  @override
  Widget build(BuildContext context) {
    data ??= ModalRoute.of(context)?.settings.arguments as File?;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: FileImage(data!), // Use FileImage to load image from File
            fit: BoxFit.cover,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _uploadImage(context);
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.check,
          color: Colors.black,
          size: 35,
        ),
      ),
    );
  }
}