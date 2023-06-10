import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class DonorForm extends StatelessWidget {
  DonorForm({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  String _name = "";
  String _phone = "";
  String _address = "";
  String _birthDate = "";
  String _regDate = "";
  String _userID = "1";
  String? _bloodType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HIILWALAL",
          style: TextStyle(fontSize: 24.0),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.bloodtype,
                size: 80.80,
                color: Colors.red,
              ),
              SizedBox(height: 10.0),
              Text(
                'BLOOD DONOR',
                style: TextStyle(fontSize: 30.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onChanged: (value) {
                  _name = value;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Phone",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
                onChanged: (value) {
                  _phone = value;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Address",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  _address = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Age",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  _birthDate = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your age';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Please enter a valid numeric age';
                  }
                  return null;
                },
                keyboardType: TextInputType.number, // Only allows numeric input
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter
                      .digitsOnly // Restrict input to digits only
                ],
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: "Blood Type",
                  border: OutlineInputBorder(),
                ),
                items: [
                  DropdownMenuItem(
                    value: "1",
                    child: Text("A+"),
                  ),
                  DropdownMenuItem(
                    value: "5",
                    child: Text("AB+"),
                  ),
                  DropdownMenuItem(
                    value: "3",
                    child: Text("B+"),
                  ),
                  DropdownMenuItem(
                    value: "7",
                    child: Text("O+"),
                  ),
                  DropdownMenuItem(
                    value: "2",
                    child: Text("A-"),
                  ),
                  DropdownMenuItem(
                    value: "6",
                    child: Text("AB-"),
                  ),
                  DropdownMenuItem(
                    value: "4",
                    child: Text("B-"),
                  ),
                  DropdownMenuItem(
                    value: "8",
                    child: Text("O-"),
                  ),

                  // Add other DropdownMenuItem items for different blood types
                ],
                value: _bloodType, // Set the current selected value
                onChanged: (value) {
                  _bloodType = value;
                },
              ),
              SizedBox(height: 5.0),
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 150,
                  right: 150,
                ),
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      // print('now');
                      Future<void> InsertDonor() async {
                        String apiUrl =
                            "http://flutter/flutterApi/blood_donation.php";
                        try {
                          var response =
                              await http.post(Uri.parse(apiUrl), body: {
                            'name': _name,
                            'Phone': _phone,
                            'Address': _address,
                            'Age': _birthDate,
                            'BloodType': _bloodType,
                            'UserID': _userID,
                          });

                          if (response.statusCode == 200) {
                            var jsonData = json.decode(response.body);
                            print(jsonData);

                            if (jsonData["message"] == "Inserted Success") {
                              // print('Inserted');
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Thank You!"),
                                    content: Text("Your Have Registered."),
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
                            }
                          }
                        } catch (error) {
                          // log("Error: $error");
                          print('error');
                        }
                      }

                      InsertDonor();
                    }
                  },
                  child: Text(
                    "Register Now",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
