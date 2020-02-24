import 'package:flutter/material.dart';

class UserPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54.0,
      height: 54.0,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/image009.jpg',
          ),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(360),
        ),
        color: Colors.redAccent,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 20.0,
            offset: Offset(2.0, 2.0),
          ),
        ],
        border: Border.all(
          color: Colors.white,
          width: 4.0,
        ),
      ),
    );
  }
}