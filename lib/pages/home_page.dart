import 'package:flutter/material.dart';
import 'package:pineapple_flutter/widgets/MyDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 206;
    String name = "deepanshu";

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      body: Center(
        child: Container(
          child: Text('Hello cool ${days} flutter $name'),
        ),
      ),
      drawer: MyDrawer(),
      // Theme(
      //   data: Theme.of(context).copyWith(
      //     // Set the transparency here
      //     canvasColor: Colors.transparent,
      //   ),
      //   child: MyDrawer(),
      // ),
    );
  }
}
