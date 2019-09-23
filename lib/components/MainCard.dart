import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: MainCardFooter(),
        ),
      ),
      width: MediaQuery.of(context).size.width - 40,
      height: 230,
      margin: EdgeInsets.only(top: 40.0),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/originals/4a/11/14/4a1114b7025890aeb1428e973fc22874.jpg"),
            fit: BoxFit.fill),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Colors.white70,
        boxShadow: [
          BoxShadow(
              color: Colors.black38,
              blurRadius: 25.0,
              offset: Offset(8.0, 8.0)),
        ],
      ),
    );
  }
}

class MainCardFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "For You",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          Text(
            "8 min",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          )
        ],
      ),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.grey[400].withOpacity(0.9),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
    );
  }
}
