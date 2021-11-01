import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDrawer extends StatelessWidget {
  //const MyDrawer({Key? key}) : super(key: key);

  final _imageUrl =
      "https://scontent.fdel27-1.fna.fbcdn.net/v/t1.6435-1/p240x240/173947210_1846466058866209_3238789289029493722_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=7206a8&_nc_ohc=ofhU_IcTsWgAX-dtuvi&tn=gZpyMEXanS6irr1d&_nc_ht=scontent.fdel27-1.fna&oh=aea6a2f99ef668bbb394e649def9d2f7&oe=61A62020";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepOrange,
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              //margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Deepanshu joshi"),
                accountEmail: Text("deepanshujoshi308@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(_imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("show Toast"),
                  action: SnackBarAction(
                    label: "undo",
                    onPressed: () {},
                  ),
                ));
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Mail",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
