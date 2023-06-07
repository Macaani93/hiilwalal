// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:hiilwalal_application/Splash.dart';
import 'package:hiilwalal_application/blood.dart';

import 'All_lists.dart';
import 'charity.dart';
import 'dashbord.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HIILWALAAL',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
