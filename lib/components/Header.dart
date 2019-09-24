import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  final String _title;
  final Widget rightSide;

  Header(this._title, {this.rightSide});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Text(
            this._title,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          margin: EdgeInsets.only(left: 20.0),
        ),
        (this.rightSide != null) ? this.rightSide : Container()
      ],
    );
  }
}
