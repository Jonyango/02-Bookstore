import 'package:flutter/material.dart';
import 'constant.dart';
import 'data_list.dart';
import 'round_rectangle_image.dart';
import 'detail_page.dart';

// BookList bookList = BookList();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  Color _unactiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Bookstore",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.sort,
            color: Colors.red.shade200,
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RoundRectangleImage(
                width: 32,
                assetName: "images/avatar.jpg",
              ),
            ),
          ],
          // bottom: TabBar(

          //   tabs: null),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(15, 25, 0, 25),
              child: Text(
                "Discover Books",
                style: kTitleTextStyle,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 390,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bookList.length,
                itemBuilder: (BuildContext context, int index) {
                  var photo, title, author, avatar, desc, rating;
                  photo = bookList[index].photo;
                  title = bookList[index].title;
                  author = bookList[index].author;
                  avatar = bookList[index].avatar;
                  desc = bookList[index].desc;
                  rating = bookList[index].rating;
                  return GestureDetector(
                    onTap: () {
                      print(title);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            photo: photo,
                            title: title,
                            author: author,
                            avatar: avatar,
                            desc: desc,
                            rating: rating,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Container(
                          width: 230,
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                photo,
                                height: 275,
                                width: 170,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                title,
                                textAlign: TextAlign.center,
                                style: kBookTitleTextStyle,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                author,
                                textAlign: TextAlign.center,
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                padding: EdgeInsets.only(left: 5.0),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(40),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(18, 20, 0, 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Authors to follow",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            "Show all",
                            style: TextStyle(
                              textBaseline: TextBaseline.alphabetic,
                              color: Colors.grey.shade300,
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: authorList.length,
                      padding: EdgeInsets.only(left: 10.0),
                      itemBuilder: (BuildContext context, int index) {
                        String nama, photo, totalBooks;
                        nama = authorList[index].name;
                        photo = authorList[index].photo;
                        totalBooks = authorList[index].totalBooks.toString();

                        return Container(
                          margin: EdgeInsets.only(right: 10.0),
                          width: 250,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(left: 10, right: 16),
                                  child: RoundRectangleImage(
                                      width: 60, height: 60, assetName: photo)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    nama,
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Icon(
                                        Icons.book,
                                        color: Colors.grey.shade400,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        totalBooks,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey.shade400,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Books",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey.shade400,
                                            fontWeight: FontWeight.w700),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: _unactiveColor,
                ),
                title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.book,
                  color: _unactiveColor,
                ),
                title: Text("Books")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  color: _unactiveColor,
                ),
                title: Text("Cart")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: _unactiveColor,
                ),
                title: Text("Profile")),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red.shade700,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
