import 'package:app/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Harb Electricity', // Updated title
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Set the background color or image here
        scaffoldBackgroundColor: Colors.lightBlueAccent,
      ),
      home: MyHomePage(),
    );
  }
}