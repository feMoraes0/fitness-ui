import 'package:flutter/material.dart';

class ImageCardWithBasicFooter extends StatelessWidget {
  final String _image, _name, _duration, _level;

  ImageCardWithBasicFooter(this._image, this._name, this._duration, this._level);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 290.0,
          height: 160.0,
          margin: EdgeInsets.only(right: 20.0),
          child: ClipRRect(
            child: Image.network(this._image, fit: BoxFit.fill),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
        ),
        Container(
          width: 290.0,
          margin: EdgeInsets.only(top: 10.0),
          child: Text(
            this._name,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 14.0),
          ),
        ),
        Container(
          width: 290.0,
          margin: EdgeInsets.only(top: 5.0),
          child: Text(
            this._duration + "    |    " + this._level,
            style: TextStyle(fontSize: 12.0, color: Colors.grey),
          ),
        )
      ],
    );
  }
}
