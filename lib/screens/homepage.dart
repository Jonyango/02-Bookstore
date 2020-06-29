import 'package:bookstore/components/authors_card.dart';
import 'package:bookstore/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:bookstore/models/book.dart';
import 'package:bookstore/models/author.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentBottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.clear_all,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage('assets/images/dp.jpg'),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          CustomAppBar(),
          SizedBox(height: 50.0),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: false,
                itemCount: bookLists.length,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (_, int index) {
                  return GestureDetector(
                    onTap: () => print("hurray"),
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
                              padding:
                                  const EdgeInsets.only(left: 20.0, right: 8.0),
                              child: Container(
                                
                                child: Hero(
                                  tag: 'bookImage',
                                  child: Image.asset(bookLists[index].image,
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, left: 20.0),
                            child: Text(
                              bookLists[index].title,
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, left: 20.0),
                            child: Text(bookLists[index].author,
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffcccccc))),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 50.0),
          Expanded(
            flex: 2,
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                    ),
                    color: Theme.of(context).primaryColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Authors to follow',
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Show all',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffe5e5e5)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 150.0,
                      child: ListView.builder(
                        itemCount: authorsList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, int index) {
                          return AuthorsCard(
                            authorName: authorsList[index].name,
                            authorImagePath: authorsList[index].authorPics,
                            authorBookCount:
                                authorsList[index].bookCounts.toString(),
                          );
                        },
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(40.0)),
            boxShadow: [
              BoxShadow(
                  blurRadius: 15.0,
                  offset: Offset(0.0, 0.75),
                  color: Colors.grey)
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.only(topRight: Radius.circular(20.0)),
          child: BottomNavigationBar(
            elevation: 10.0,
            backgroundColor: Theme.of(context).primaryColor,
            onTap: (index) {
              setState(() {
                currentBottomIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Theme.of(context).accentColor,
            currentIndex: currentBottomIndex,
            iconSize: 30.0,
            items: [
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Icon(Icons.home),
                  ),
                  title: Text('')),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Icon(Icons.save),
                  ),
                  title: Text('')),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Icon(Icons.table_chart),
                  ),
                  title: Text('')),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Icon(Icons.perm_identity),
                  ),
                  title: Text('')),
            ],
          ),
        ),
      ),
    );
  }
}
