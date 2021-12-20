import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pineapple_flutter/models/catalog.dart';
import 'package:pineapple_flutter/models/catalog.dart';
import 'package:pineapple_flutter/models/catalog.dart';
import 'package:pineapple_flutter/models/catalog.dart';
import 'package:pineapple_flutter/widgets/MyDrawer.dart';
import 'package:pineapple_flutter/widgets/item_widget.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalogs.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModel.product[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16),
                  itemBuilder: (context, index) {
                    final item = CatalogModel.items[index];
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                        header: Text(item.name),
                        child: Image.network(item.image),
                        footer: Text(item.price.toString()),
                      ),
                    );
                  },
                  itemCount: CatalogModel.items.length,
                )
              : Center(
                  child: CircularProgressIndicator(),
                )),
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
