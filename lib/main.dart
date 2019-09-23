import 'package:flutter/material.dart';

import 'components/MainCard.dart';
import 'components/UserPhoto.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Geometria'),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        child: Text(
                      "Programs",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                    )),
                    UserPhoto()
                  ],
                ),
                Row(
                  children: <Widget>[MainCard()],
                )
              ],
            )),
      ),
    );
  }
}
