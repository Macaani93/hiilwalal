
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:hiilwalal/Content/imagewidget.dart';
import 'package:hiilwalal/Content/TextfieldWidget.dart';
import 'package:hiilwalal/Content/buttonWidget.dart';
import 'package:hiilwalal/Content/imagewidget.dart';
import 'package:hiilwalal/Content/mytext.dart';
import 'package:hiilwalal/Pages/SignUp.dart';
import 'package:hiilwalal/Pages/dashbord.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final username = TextEditingController();
  final password = TextEditingController();
  bool isLoading = false;

  void clean() {
    username.text = "";
    password.text = "";
  }

  Future<void> startLogin() async {
    String apiUrl = "http://127.0.0.1/flutterApi/Login.php";

    try {
      setState(() {
        isLoading = true;
      });

      var response = await http.post(Uri.parse(apiUrl), body: {
        'username': username.text,
        'password': password.text,
      });

      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body);
        print(jsonData);

        if (jsonData["message"] == "Login successful") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Dashboard()),
          );
          clean();
        } else {
          Widget okButton = TextButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.pop(context);
            },
          );
          AlertDialog alert = AlertDialog(
            title: Text("UserName or password is Incorrect"),
            actions: [okButton],
          );
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return alert;
              });
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
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const ImageWidget(ImageAsset: 'images/Log.png', ImageHeight: 250),
          MyText(MylableText: "HiilWalaal App", FontSize: 30),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 25, right: 25),
            child: Container(
              width: double.infinity,
              height: 450,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  MyTextField(
                    obscureText: false,
                    Control: username,
                    HintText: "UserName",
                    PrefixIcon: Icon(Icons.person),
                  ),
                  SizedBox(height: 20),
                  MyTextField(
                    obscureText: true,
                    Control: password,
                    HintText: "Password",
                    PrefixIcon: Icon(Icons.lock_outline_rounded),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    child: isLoading
                        ? CircularProgressIndicator(
                            backgroundColor: Colors.white,
                          )
                        : MyButton(btnText: "Login"),
                    onTap: () async {
                      await startLogin();
                    },
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child:
                            const MyText(MylableText: "SignUp", FontSize: 15),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
