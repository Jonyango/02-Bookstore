import 'package:flutter/material.dart';

class RoundRectangleImage extends StatelessWidget {
  final double width, height;
  final String assetName;

  RoundRectangleImage({this.width, this.height, @required this.assetName});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      elevation: 3,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(assetName), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
      ),
    );
  }
}
