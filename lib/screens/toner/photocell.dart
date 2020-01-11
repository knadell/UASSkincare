import 'package:flutter/material.dart';
import 'package:skincare/model/photo.dart';

class PhotoCell extends StatelessWidget { //krn tidak membutuhkan state
  const PhotoCell(this.photo);
  @required
  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                child: ClipRRect( //untuk gambar di url thumbnail
                  borderRadius: BorderRadius.circular(10.0),
                  child: Hero( //menggunakan hero agar image jdi child hero
                    tag: "image${photo.id}",
                    child: FadeInImage.assetNetwork(
                      placeholder: "",
                      image: photo.thumbnailUrl,
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
              ),
              Padding( //text di bawah gmbar
                padding: EdgeInsets.all(10.0),
                child: Text(
                  photo.title,
                  maxLines: 2,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500, //font ny medium tebal
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
