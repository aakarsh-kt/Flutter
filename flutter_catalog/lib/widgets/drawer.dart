import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/route.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  movetoHome(BuildContext context) async {
    Navigator.pushNamed(context, MyRoutes.homeRoute);
  }

 

  @override
  Widget build(BuildContext context) {
    final imgUrl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrs4LyUYNLiaO2quZ4i-Si2-igGOU_d56xgw&usqp=CAU";
    return Drawer(
      child: Container(
        color: Colors.lightGreen,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Akarsh"),
                accountEmail: Text("akarshofficial009@gmail.com"),
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(imgUrl)),
              ),
            ),
            ListTile(
              onTap: () => movetoHome(context),
              leading: Icon(
                CupertinoIcons.home,
              ),
              title: Text(
                "Home",
              ),
            ),
            ListTile(
            
              leading: Icon(
                CupertinoIcons.profile_circled,
              ),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
              ),
              title: Text("Manage Email id"),
            ),
          ],
        ),
      ),
    );
  }
}
