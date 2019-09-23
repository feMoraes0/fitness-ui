import 'package:flutter/material.dart';

import 'components/MainCard.dart';
import 'components/Section.dart';
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
          padding: EdgeInsets.only(top: 20.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Text(
                      "Programs",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    margin: EdgeInsets.only(left: 20.0),
                  ),
                  UserPhoto()
                ],
              ),
              Row(
                children: <Widget>[
                  MainCard(),
                ],
              ),
              Section(
                title: "Fat burning",
                body: ListView(
                  padding: EdgeInsets.only(left: 20.0),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 360.0,
                      color: Colors.red,
                    ),Container(
                      width: 360.0,
                      color: Colors.blue,
                    ),Container(
                      width: 360.0,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
