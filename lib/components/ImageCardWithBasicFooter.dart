import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageCardWithBasicFooter extends StatelessWidget {
  final String image, title, firstInfo, secondInfo, tag;
  final double imageWidth;

  ImageCardWithBasicFooter({
    @required this.image,
    @required this.title,
    @required this.firstInfo,
    @required this.secondInfo,
    @required this.tag,
    this.imageWidth = 290.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Hero(
          tag: this.tag,
          child: Container(
            width: this.imageWidth,
            height: 160.0,
            child: ClipRRect(
              child: Image.network(this.image, fit: BoxFit.fill),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
          ),
        ),
        Container(
          width: this.imageWidth,
          margin: EdgeInsets.only(top: 10.0),
          child: Text(
            this.title,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 14.0),
          ),
        ),
        Container(
          width: this.imageWidth,
          margin: EdgeInsets.only(top: 5.0),
          child: Text(
            this.firstInfo + "    |    " + this.secondInfo,
            style: TextStyle(fontSize: 12.0, color: Colors.grey),
          ),
        )
      ],
    );
  }
}
