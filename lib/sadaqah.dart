// ignore_for_file: unused_field, unused_import

import 'dart:html';
import 'package:flutter/material.dart';

class SadaqahForm extends StatefulWidget {
  @override
  _SadaqahFormState createState() => _SadaqahFormState();
}

class _SadaqahFormState extends State<SadaqahForm> {
  String _name = "";
  String _phone = "";
  String _address = "";
  String _amount = "";
  String _description = "";
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
                'SADAQAH',
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
                labelText: "Amount",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _amount = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Description",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _description = value;
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
                      content: Text("You donated."),
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
                "DONATE NOW",
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
