import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Row(
          children: <Widget>[
            Text("For You <3"),
            Text("8 min")
          ],
        ),
      ),
      width: MediaQuery.of(context).size.width - 40,
      height: 230,
      margin: EdgeInsets.only(top: 40.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://i.pinimg.com/originals/4a/11/14/4a1114b7025890aeb1428e973fc22874.jpg"),
          fit: BoxFit.fill
        ),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Colors.white70,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 25.0,
            offset: Offset(8.0, 8.0)
          ),
        ],
      ),
    );
  }
}