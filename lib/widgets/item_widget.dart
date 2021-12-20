import 'package:flutter/material.dart';
import 'package:pineapple_flutter/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final snackBar = SnackBar(content: Text("${item.name} pressed"));
    return Card(
      child: ListTile(
        onTap: () {
          //print("${item.name} pressed.");
          final snackBar = SnackBar(
            content: Text("${item.name} pressed"),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                print("${item.name} undo.");
              },
            ),
            duration: Duration(seconds: 2),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\₹${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
