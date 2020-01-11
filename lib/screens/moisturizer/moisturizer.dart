import 'package:flutter/material.dart';
import 'package:skincare/screens/moisturizer/services.dart';
import 'package:skincare/model/photo.dart';
import 'package:skincare/screens/moisturizer/photocell.dart';
import 'package:skincare/screens/moisturizer/moisdet.dart';
import 'dart:async';

class MoisturizerScreen extends StatefulWidget {
  static const String routeName = "/Moisturizer";
 
  final String title = "Moisturizer";

  @override
  State createState() {
    return MoisturizerState();
  }
}

class MoisturizerState extends State<MoisturizerScreen> {

  gridview(AsyncSnapshot<List<Photo>> snapshot) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 2.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: snapshot.data.map(
          (photo) {
            return GestureDetector(
              child: GridTile(
                child: PhotoCell(photo),
              ),
              onTap: () {
                goToDetailsPage(context, photo);
              },
            );
          },
        ).toList(),
      ),
    );
  }

  goToDetailsPage(BuildContext context, Photo photo) {
    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (BuildContext context) => MoisDetails(
              curPhoto: photo,
            ),
      ),
    );
  }

  circularProgress() { //loading
    return Center(
      child: const CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[800],
      appBar: AppBar(
        backgroundColor: Colors.yellow[900],
          title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: FutureBuilder<List<Photo>>(
              future: Services.getPhotos(),
              builder: (context, snapshot) {
                // jika error maka akan muncul text error
                if (snapshot.hasError) {
                  return Text('Error ${snapshot.error}');
                }
                //
                if (snapshot.hasData) {
                  return gridview(snapshot);
                }

                return circularProgress();
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
