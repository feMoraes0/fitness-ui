import 'package:flutter/material.dart';

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

class UserPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54.0,
      height: 54.0,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
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
          image: NetworkImage("https://brakpanherald.co.za/wp-content/uploads/sites/27/2017/12/ti_725_9000.3642584051.jpg"),
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
