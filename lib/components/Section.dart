import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final Widget body;
  final String title;

  Section({this.title, this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 35.0),
      child: Column(
        children: <Widget>[
          SectionTitle(this.title),
          Container(
            height: 200.0,
            child: this.body,
          )
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String _text;

  SectionTitle(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, bottom: 10.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          this._text,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
