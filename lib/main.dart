import 'package:flutter/material.dart';
import 'package:flutter_image/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRUD Image',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomeScreen()
    );
  }
}
