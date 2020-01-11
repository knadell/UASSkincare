import 'package:flutter/material.dart';
import 'package:skincare/model/photo.dart';

class TonerDetails extends StatefulWidget {
  final Photo curPhoto;
  TonerDetails({@required this.curPhoto});

  @override
  TonerDetailsState createState() => TonerDetailsState();
}

class TonerDetailsState extends State<TonerDetails> {
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: "image${widget.curPhoto.id}",
              child: FadeInImage.assetNetwork(
                placeholder: "images/no_image.png",
               image: widget.curPhoto.url,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            OutlineButton(
              child: Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}