import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pineapple_flutter/pages/home_page.dart';
import 'package:pineapple_flutter/pages/login_page.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  // const myApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          fontFamily: GoogleFonts.lato().fontFamily),

      darkTheme:
          ThemeData(brightness: Brightness.dark, primaryColor: Colors.black26),
      // initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
