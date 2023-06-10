import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HIILWALAL',
      debugShowCheckedModeBanner: false,
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
                onPressed: () {},
                child: Text(
                  'LIST OF HOSPITALS',
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(250, 80)),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'LIST OF DONORS ',
                  style: TextStyle(fontSize: 20),
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
