import 'package:flutter/material.dart';

import 'components/MainCard.dart';
import 'components/UserPhoto.dart';
import 'components/SectionTitle.dart';

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
              SectionTitle("Fat burning"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 300.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                      ),
                    ),
                    Container(
                      width: 300.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                      ),
                    ),
                    Container(
                      width: 300.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
