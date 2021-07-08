import 'dart:ui';

import 'package:book_app/screens/get_started_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const GetStarted(),
    );
  }
}

