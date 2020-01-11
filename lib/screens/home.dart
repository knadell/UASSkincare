import 'package:flutter/material.dart';
import 'package:skincare/screens/fyii.dart';
import 'package:skincare/screens/toner/toner.dart';
import 'package:skincare/screens/serum/serum.dart';
import 'package:skincare/screens/moisturizer/moisturizer.dart';


class HomeScreen extends StatefulWidget {
  @override 
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Drawer getNavDrawer(BuildContext context){
    var headerChild = DrawerHeader(child: Text("SkincareNavDraw"));
    var aboutChild = AboutListTile(
      child: Text("Tentang"),
      applicationName: "Skincare types",
      applicationVersion: "v1.0.0",
      applicationIcon: Icon(Icons.adb),
      icon: Icon(Icons.info));
    ListTile getNavItem(var icon, String s, String routeName){
    return ListTile(
      leading: Icon(icon),
      title: Text(s),
      onTap: () {
        setState(() {
          //pop closes the drawer
          Navigator.of(context) .pop();
          //navigate to the route
          Navigator.of(context) .pushNamed(routeName);
        });
      },
      ); 
    }
  var myNavChildren = [
    headerChild,
       getNavItem(Icons.home, "Beranda", "/"),
    getNavItem(Icons.account_circle, "Informasi untuk mu", FyiiScreen.routeName),
    getNavItem(Icons.spa, "Jenis Toner", TonerScreen.routeName),
    getNavItem(Icons.spa, "Jenis Serum", SerumScreen.routeName),
    getNavItem(Icons.spa, "Jenis Moisturizer", MoisturizerScreen.routeName),
    aboutChild
  ];
  
  ListView listView = ListView(children: myNavChildren);

  return Drawer(
    child: listView,
  );
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold (
      appBar: AppBar (
        backgroundColor: Colors.yellow[900],
        title:  Text("Haii"),
      ),
       body: Container(
         decoration: BoxDecoration(
           image:  DecorationImage(
             image: AssetImage("assets/hm.png"),
              fit: BoxFit.cover,
           )
         )
       ),
        drawer: getNavDrawer(context),
    );
  }

}

