import 'package:flutter/material.dart';

class AuthorsCard extends StatelessWidget {
  AuthorsCard({this.authorImagePath, this.authorName, this.authorBookCount});

  final String authorImagePath;
  final String authorName;
  final String authorBookCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        color: Colors.grey[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 80.0,
            width: 80.0,
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(blurRadius: 6.0, offset: Offset(0.0, 0.75))
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
              child: Image.asset(authorImagePath, fit: BoxFit.cover),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                authorName,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 5.0),
              Row(
                children: <Widget>[
                  Icon(Icons.confirmation_number,
                      size: 10.0, color: Color(0xffcccccc)),
                  SizedBox(width: 5.0),
                  Text(
                    '25 books',
                    style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffcccccc)),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
