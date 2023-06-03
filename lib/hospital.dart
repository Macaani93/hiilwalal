// ignore_for_file: unused_field, unused_import

import 'dart:html';
import 'package:flutter/material.dart';

class HospitalForm extends StatefulWidget {
  @override
  _HospitalFormState createState() => _HospitalFormState();
}

class _HospitalFormState extends State<HospitalForm> {
  String _name = "";
  String _phone = "";
  String _address = "";
  // ignore: prefer_final_fields
  String _regDate = "";
  String _actionDate = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HIILWALAL",
          style: TextStyle(fontSize: 50.0),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'HOSPITAL',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            SizedBox(
              height: 30.0,
              width: 10.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Phone",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _phone = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Address",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _address = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: "RegDate",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _regDate = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Action Date",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _actionDate = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Save form data to database or
                //send to server
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Thank You!"),
                      content: Text("You Registered."),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("OK"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text(
                "REGISTER NOW",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 242, 244, 242),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 50, 188, 3)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
