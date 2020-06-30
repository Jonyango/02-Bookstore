import 'dart:ui';

import 'package:bookstore/utils/items.dart';
import 'package:bookstore/utils/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final Store _store = Provider.of<Store>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xE9FFFFFF),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.05,
                vertical: height * 0.02,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color(0xA1000000),
                    spreadRadius: 1.0,
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.sort,
                        color: Colors.red,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          "images/profile_2.jpg",
                          width: width * 0.1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  Text(
                    "Discover Books",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "CLASSICS",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        "NEW",
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        "UPCOMING",
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(
                vertical: height * 0.05,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _store.books
                    .map<Widget>(
                      (Book book) => Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.08,
                        ),
                        constraints: BoxConstraints(
                          maxWidth: width * 0.5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Image.asset(
                                  book.image,
                                ),
                              ),
                              decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.grey[600],
                                    blurRadius: 10.0,
                                    offset: Offset(8.0, 8.0),
                                    spreadRadius: 0.0,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: height * 0.03),
                            Text(
                              book.name,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: height * 0.01),
                            Text(
                              book.author,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.02,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Color(0xA1000000),
                      spreadRadius: 1.0,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Authors to follow",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.6,
                            ),
                          ),
                          Text(
                            "Show All",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[400],
                              letterSpacing: 0.6,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: _store.authors
                            .map<Widget>(
                              (Author author) => Container(
                                padding: EdgeInsets.only(
                                  left: width * 0.03,
                                  right: width * 0.06,
                                  top: height * 0.02,
                                  bottom: height * 0.02,
                                ),
                                margin: EdgeInsets.symmetric(
                                  horizontal: width * 0.04,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.grey[200],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(2.0),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[400],
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image.asset(
                                          author.image,
                                          height: width * 0.15,
                                          width: width * 0.15,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          author.name,
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        SizedBox(height: height * 0.005),
                                        Row(
                                          children: <Widget>[
                                            Image.asset(
                                              "images/book_icon.png",
                                              height: 15.0,
                                            ),
                                            SizedBox(width: width * 0.015),
                                            Text(
                                              "${author.bookAmount.toString()} books",
                                              style: TextStyle(
                                                color: Colors.grey[600],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
