import 'package:flutter/material.dart';

class BookSlide extends StatelessWidget {
  BookSlide(
      {@required this.title,
      @required this.author,
      @required this.image,
      @required this.heroTag,
      this.onPressed});

  final String title;
  final String author;
  final String image;
  final String heroTag;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.transparent,
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10.0,
                          color: Colors.grey[500],
                          offset: Offset(10.0, 15.0))
                    ],
                  ),
                  child: Hero(
                      tag: heroTag,
                      child: Image.asset(image, fit: BoxFit.fill)),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 20.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 20.0),
              child: Text(author,
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffcccccc))),
            ),
          ],
        ),
      ),
    );
  }
}
