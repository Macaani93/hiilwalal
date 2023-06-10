// ignore_for_file: unused_import

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:hiilwalal/Pages/Splash.dart';
import 'package:hiilwalal/Pages/blood.dart';

import 'Pages/All_lists.dart';
import 'Pages/charity.dart';
import 'Pages/dashbord.dart';

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
      home: Dashboard(),
    );
  }
}
