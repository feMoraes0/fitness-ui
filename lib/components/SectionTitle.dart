import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String text;

  SectionTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          this.text,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
      margin: EdgeInsets.only(
        top: 35.0,
        bottom: 0.0,
        left: 20.0,
      ),
    );
  }
}
