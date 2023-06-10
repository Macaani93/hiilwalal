import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import '../../Content/TextfieldWidget.dart';
import '../../Content/buttonWidget.dart';
import '../../Content/imagewidget.dart';
import '../../Content/mytext.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final username = TextEditingController();
  final password = TextEditingController();
  final password2 = TextEditingController();
  final FullName = TextEditingController();
  void clean() {
    username.text = "";
    password.text = "";
    password2.text = "";
  }

  bool isLoading = false;

  Future<void> startSignUp() async {
    String apiUrl = "http://127.0.0.1/flutterApi/SignUp.php";

    try {
      var response = await http.post(Uri.parse(apiUrl), body: {
        'username': username.text,
        'fullname': FullName.text,
        'password': password.text,
      });

      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body);
        print(jsonData);

        if (jsonData["message"] == "Login successful") {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => Dashboard()),
          // );
          print('Inserted');
          clean();
        }
      }
      //   if (jsonData["error"]) {
      //     // Handle error case
      //     log("Login error");
      //   } else {}
      // } else {
      //   print('Error');
      //   log("HTTP request failed with status code: ${response.statusCode}");
      // }
    } catch (error) {
      log("Error: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Create User"),
          backgroundColor: Color.fromARGB(255, 92, 54, 244),
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )),
      body: ListView(
        children: [
          const ImageWidget(ImageAsset: 'images/Log.png', ImageHeight: 210),
          MyText(MylableText: "HiilWalaal App", FontSize: 30),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 25, right: 25),
            child: Container(
                width: double.infinity,
                height: 450,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(
                        obscureText: false,
                        Control: FullName,
                        HintText: "Full Name",
                        PrefixIcon: Icon(Icons.alternate_email_outlined)),
                    SizedBox(
                      height: 5,
                    ),
                    MyTextField(
                        obscureText: false,
                        Control: username,
                        HintText: "Username",
                        PrefixIcon: Icon(Icons.alternate_email_outlined)),
                    SizedBox(
                      height: 10,
                    ),
                    MyTextField(
                        obscureText: true,
                        Control: password,
                        HintText: "Password",
                        PrefixIcon: Icon(Icons.lock_outline_rounded)),
                    SizedBox(
                      height: 10,
                    ),
                    MyTextField(
                        obscureText: true,
                        Control: password2,
                        HintText: "Confirm Password",
                        PrefixIcon: Icon(Icons.lock_outline_rounded)),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: isLoading
                          ? CircularProgressIndicator(
                              backgroundColor: Colors.white,
                            )
                          : MyButton(btnText: "SignUp"),
                      onTap: () async {
                        try {
                          if (password.text == password2.text) {
                            isLoading = true;

                            startSignUp();
                          } else {
                            Widget okButton = TextButton(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            );
                            AlertDialog alert = AlertDialog(
                              title: Text(
                                  "please enter same as password on field Confirm password"),
                              actions: [okButton],
                            );
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return alert;
                                });
                          }
                        } catch (Err) {
                          log("Error");
                        }
                        isLoading = false;
                      },
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
