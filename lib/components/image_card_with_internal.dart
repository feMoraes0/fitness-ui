import 'package:flutter/material.dart';

class ImageCardWithInternal extends StatelessWidget {
  final String image, title, duration;

  const ImageCardWithInternal({
    Key key,
    @required this.image,
    @required this.title,
    @required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              this.duration,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            ),
            padding: EdgeInsets.symmetric(
              vertical: 4.0,
              horizontal: 10.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              color: Colors.black.withAlpha(900),
            ),
          ),
          Text(
            this.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
      width: size.width * 0.85,
      height: size.width * 0.60,
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(this.image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
    );
  }
}
