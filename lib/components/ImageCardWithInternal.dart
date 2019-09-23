import 'package:flutter/material.dart';

class ImageCardWithInternal extends StatelessWidget {
  final String _image, _title, _duration;

  ImageCardWithInternal(this._image, this._title, this._duration);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              this._duration,
              style: TextStyle(color: Colors.white, fontSize: 12.0),
            ),
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.black.withAlpha(900),
            ),
          ),
          Text(
            this._title,
            style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w900,),
          ),
        ],
      ),
      width: 360.0,
      height: 250.0,
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(this._image),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
    );
  }
}
