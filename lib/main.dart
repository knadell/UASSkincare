import 'package:flutter/material.dart';
import 'package:skincare/screens/fyii.dart';
import 'package:skincare/screens/toner/toner.dart';
import 'package:skincare/screens/home.dart';
import 'package:skincare/screens/serum/serum.dart';
import 'package:skincare/screens/moisturizer/moisturizer.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(), // kalau () kosong berarti boleh NULL, kalau (BuildContext=1) berarti tdk blh NULL
    routes: <String, WidgetBuilder>{
    //parameter wajib isi
      FyiiScreen.routeName: (BuildContext context) => FyiiScreen(),
      TonerScreen.routeName: (BuildContext context) => TonerScreen(),
      SerumScreen.routeName: (BuildContext context) => SerumScreen(),
      MoisturizerScreen.routeName: (BuildContext context) => MoisturizerScreen(),
      FyiiScreen.routeName: (BuildContext context) => FyiiScreen(),
      //AccountScreen.routeName: (BuildContext context) => AccountScreen(),
    },
  ));
}