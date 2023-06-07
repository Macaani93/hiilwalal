import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:hiilwalal_application/Content/TextfieldWidget.dart';
import 'package:hiilwalal_application/Content/buttonWidget.dart';
import 'package:hiilwalal_application/Content/imagewidget.dart';
import 'package:hiilwalal_application/Content/mytext.dart';
import 'package:hiilwalal_application/SignUp.dart';
import 'package:hiilwalal_application/dashbord.dart';
import 'package:http/http.dart' as http;

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  final username = TextEditingController();
  final password = TextEditingController();
  bool isLoading = false;
  void clean() {
    username.text = "";
    password.text = "";
  }

  startLogin() async {
    String apiUrl = "http://127.0.0.1/config.php";

    var response = await http.post(Uri.parse(apiUrl), body: {
      'username': username.text,
      'password': password.text,
    });

    if (response.statusCode == 200) {
      var jsondata = json.decode(response.body);
      if (jsondata["error"]) {
        // Handle error case
      } else {
        if (jsondata["success"] == true) {
          print("success");
          // Save the data returned from the server and navigate to the home page
        } else {
          // Handle unsuccessful login case
        }
      }
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
                    SizedBox(
                      height: 20,
                    ),
                    MyTextField(
                        obscureText: false,
                        Control: username,
                        HintText: "Email",
                        PrefixIcon: Icon(Icons.alternate_email_outlined)),
                    SizedBox(
                      height: 20,
                    ),
                    MyTextField(
                        obscureText: true,
                        Control: password,
                        HintText: "Password",
                        PrefixIcon: Icon(Icons.lock_outline_rounded)),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: isLoading
                          ? CircularProgressIndicator(
                              backgroundColor: Colors.white,
                            )
                          : MyButton(btnText: "Login"),
                      onTap: () async {
                        try {
                          isLoading = true;
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Dashboard()));
                          startLogin();
                          //setSate() {}
                        } catch (Err) {
                          log("Error");
                        }
                        isLoading = false;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          // ignore: sort_child_properties_last
                          child:
                              const MyText(MylableText: "SignUp", FontSize: 15),
                          onTap: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()));
                          }),
                        )
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
