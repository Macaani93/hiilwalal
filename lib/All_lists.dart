// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:hiilwalal_application/hospital.dart';

import 'chariyah.dart';
import 'chariyahlist.dart';
import 'donors.dart';
import 'donorslist.dart';
import 'hospitallist.dart';
import 'sadaqah.dart';
import 'sadaqahlist.dart';
import 'seekerslist.dart';

class All_lists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HIILWALAL',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(
            'HIILWALAL',
            style: TextStyle(fontSize: 50.0),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListDonars()),
                  );
                },
                child: Text(
                  'Donors Lists',
                  style: TextStyle(fontSize: 30.0),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(250, 80)),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Listseeker()),
                  );
                },
                child: Text(
                  'Seekers Lists',
                  style: TextStyle(fontSize: 30),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(250, 80)),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hospiatllist()),
                  );
                },
                child: Text(
                  'Hospital Lists',
                  style: TextStyle(fontSize: 30),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(250, 80)),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => sadaqahlist()),
                  );
                },
                child: Text(
                  'Sdaqah Lists',
                  style: TextStyle(fontSize: 30),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(250, 80)),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Chariyahlist()),
                  );
                },
                child: Text(
                  'Chariyah Lists',
                  style: TextStyle(fontSize: 30),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(250, 80)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
