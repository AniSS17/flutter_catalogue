import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalogue/pages/home_page.dart';
import 'package:flutter_catalogue/pages/login_page.dart';
import 'package:flutter_catalogue/utils/routes.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl="https://www.simplilearn.com/ice9/free_resources_article_thumb/top_5_valuable_ethical_hacking_tools.jpg";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,// koi white gaps nhi chodne ka
            child: UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            accountName: Text("Aniket Singh"),
            accountEmail: Text("aniket.sing222@gmail.com"),
            // currentAccountPicture: Image.network(imageUrl),//.asset dena h jb downloaded img daalna h to
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            decoration: BoxDecoration(color: Colors.black),
            // decoration: BoxDecoration(color: Color.fromARGB(217, 9, 37, 197),),
          )),
          ListTile(
            // onTap: () => LoginPage(),
            leading: Icon(CupertinoIcons.home,color: Colors.black,),
            title: Text("Home",style: TextStyle(color: Colors.black),textScaleFactor: 1.3,),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled,color: Colors.black,),
            title: Text("Profile",style: TextStyle(color: Colors.black),textScaleFactor: 1.3,),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail,color: Colors.black,),
            title: Text("Email",style: TextStyle(color: Colors.black),textScaleFactor: 1.3,),
            // onTap: Navigator.pushNamed(context, MyRoutes.loginRoute),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.settings,color: Colors.black,),
            title: Text("Settings",style: TextStyle(color: Colors.black),textScaleFactor: 1.3,),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.info,color: Colors.black,),
            title: Text("About",style: TextStyle(color: Colors.black),textScaleFactor: 1.3,),
          ),
        ],
      ),
    );
  }
}