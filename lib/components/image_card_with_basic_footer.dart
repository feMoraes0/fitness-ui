import 'package:fitness_flutter/models/exercise.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageCardWithBasicFooter extends StatelessWidget {
  final Exercise exercise;
  final String tag;
  final double imageWidth;

  ImageCardWithBasicFooter({
    @required this.exercise,
    @required this.tag,
    this.imageWidth,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double localWidth = size.width * 0.75;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Hero(
          tag: this.tag,
          child: Container(
            width: this.imageWidth != null ? this.imageWidth : localWidth,
            height: 160.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              image: DecorationImage(
                image: AssetImage(this.exercise.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          width: this.imageWidth != null ? this.imageWidth : localWidth,
          margin: EdgeInsets.only(top: 10.0),
          child: Text(
            this.exercise.title,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 14.0),
          ),
        ),
        Container(
          width: this.imageWidth != null ? this.imageWidth : localWidth,
          margin: EdgeInsets.only(top: 5.0),
          child: Text(
            '${this.exercise.time}    |    ${this.exercise.difficult}',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
