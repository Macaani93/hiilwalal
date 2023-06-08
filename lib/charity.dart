// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:hiilwalal/hospital.dart';

import 'chariyah.dart';
import 'donors.dart';
import 'sadaqah.dart';

class charity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HIILWALAAL',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: Text(
        //     'HIILWALAL',
        //     style: TextStyle(fontSize: 50.0),
        //   ),
        // ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SadaqahForm()),
                  );
                },
                child: Text(
                  'SADAQAH',
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
                    MaterialPageRoute(builder: (context) => ChariyahForm()),
                  );
                },
                child: Text(
                  'CHARIYAH',
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
