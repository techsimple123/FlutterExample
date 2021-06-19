import 'package:flutter/material.dart';
import 'package:pineapple_flutter/home_page.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  // const myApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: HomePage(),
    );
  }
}

