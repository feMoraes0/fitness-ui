import 'package:flutter/material.dart';

class UserTip extends StatelessWidget {

  final String _image;
  final String _name;

  UserTip(this._image, this._name);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.0, top: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            width: 105,
            height: 105,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(this._image),
              ),
              borderRadius: BorderRadius.all(Radius.circular(360.0)),
              border: Border.all(color: Colors.white, width: 7.0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              this._name,
              style: TextStyle(fontSize: 14.0, color: Colors.black38,)
            ),
          )
        ],
      ),
    );
  }
}
