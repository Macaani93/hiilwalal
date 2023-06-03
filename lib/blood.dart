import 'package:flutter/material.dart';
import 'package:hiilwalal/donors.dart';
import 'package:hiilwalal/hospital.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                    MaterialPageRoute(builder: (context) => HospitalForm()),
                  );
                },
                child: Text(
                  'HOSPITAL',
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
                    MaterialPageRoute(builder: (context) => DonorForm()),
                  );
                },
                child: Text(
                  'BLOOD DONOR',
                  style: TextStyle(fontSize: 30),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(250, 80)),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => DonorForm()),
                  // );
                },
                child: Text(
                  'BLOOD SEEKER',
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