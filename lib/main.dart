import 'package:flutter/material.dart';
import './homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    // Material App
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('SWH'),
            centerTitle: true,
          ),
          body: Home()),
    );
  }
}
