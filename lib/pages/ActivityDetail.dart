import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityDetail extends StatelessWidget {
  final String image, tag;

  ActivityDetail({@required this.image, @required this.tag});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: this.tag,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 270,
                    margin: EdgeInsets.only(bottom: 30.0),
                    child: Image.network(this.image, fit: BoxFit.fitHeight),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                    padding:
                        EdgeInsets.only(left: 20.0, bottom: 20.0, right: 20.0),
                    width: width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Easy Start",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.blueGrey,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          height: 90.0,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(231, 241, 255, 1.0),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 55.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Time",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.blueGrey[300]),
                                    ),
                                    Text(
                                      "5 min",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.lightBlue,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 45.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Intensity",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.blueGrey[300]),
                                    ),
                                    Text(
                                      "Low",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.lightBlue,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15.0),
                          child: Column(
                            children: <Widget>[
                              Step(),
                              Step(),
                              Step(),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Color.fromRGBO(100, 140, 255, 1.0),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(100, 140, 255, 0.5),
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0),
              ),
            ]),
        child: Text(
          "Start",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 22.0, fontWeight: FontWeight.w900, color: Colors.white),
        ),
      ),
    );
  }
}

class Step extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 60.0,
          width: 60.0,
          margin: EdgeInsets.only(right: 20.0, bottom: 20.0),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    "http://media2.s-nbcnews"
                    ".com/i/MSNBC/Components/Video/201701/x_tdy_ov_5_tone_legs_170131.jpg",
                  ),
                  fit: BoxFit.fitHeight),
              borderRadius: BorderRadius.circular(15.0)),
        ),
        Container(
            height: 65.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Kneeling Kickbacks",
                  style: TextStyle(fontSize: 16.0, color: Colors.black87),
                ),
                Text(
                  "50 sec",
                  style: TextStyle(fontSize: 14.0, color: Colors.blueGrey[200]),
                )
              ],
            ))
      ],
    );
  }
}
