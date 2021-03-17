import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyImagePicker extends StatefulWidget {
  @override
  _MyImagePickerState createState() => _MyImagePickerState();
}

class _MyImagePickerState extends State<MyImagePicker> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(title: Text('Sample Image Picker'),
      centerTitle: true,
        backgroundColor: Colors.black,
      ),
        floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.black,
          onPressed: getImage,
          tooltip: 'Pick Image',
          child: Icon(Icons.add_a_photo,
          color: Colors.white,
          ),
        ),
        body: Container(
          width: _width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: _image == null
                    ? Text('No image selected.')
                    : Image.file(_image),
              ),
            ],
          ),

        )
    );
  }
}
