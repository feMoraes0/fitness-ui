import 'package:flutter/material.dart';

class DailyTip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = 330.0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: width,
          height: 200.0,
          margin: EdgeInsets.only(right: 15.0, bottom: 10.0,),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://www.wallpaperup.com/uploads/wallpapers/2015/01/13/584666/bc6cbb316c0a71e0db4c7ee8aeb8ff7c.jpg"),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15.0))
          ),
        ),
        Text("3 Main workout tips", style: TextStyle(fontSize: 14.0),),
        Container(
          width: width,
          margin: EdgeInsets.only(top: 10.0),
          child: Text(
            "The American Council on Exercises (ACE) recently surveyed 3,000"
              " ACE-certificated personal trainers about the best!",
            style: TextStyle(color: Colors.black45, fontSize: 14.0),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
          child: Text("More", style: TextStyle(color: Colors.white)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Colors.lightBlue,
          ),
        )
      ],
    );
  }
}
