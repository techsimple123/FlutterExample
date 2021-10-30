import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pineapple_flutter/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $_name",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter username", labelText: "Username"),
                      onChanged: (value) {
                        _name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        height: 50,
                        width: changeButton ? 50 : 150,
                        alignment: AlignmentDirectional.center,
                        child: changeButton
                            ? Icon(Icons.done)
                            : Text(
                                "Login",
                                style: TextStyle(fontSize: 15),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          // shape: BoxShape.circle,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 25 : 8),
                        ),
                        duration: Duration(seconds: 1),
                      ),
                    )

                    // ElevatedButton(
                    //     child: Text("Login"),
                    //     style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     })
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
