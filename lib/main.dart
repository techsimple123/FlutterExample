import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pineapple_flutter/pages/home_page.dart';
import 'package:pineapple_flutter/pages/login_page.dart';
import 'package:pineapple_flutter/utils/routes.dart';
import 'package:pineapple_flutter/widgets/themes.dart';

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
      //  debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),

      darkTheme: MyTheme.darkTheme,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
