import 'package:bookstore/components/custom_button.dart';
import 'package:bookstore/models/book.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage({@required this.book});

  final Book book;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String bookImagePath;
  String authorImagePath;
  String bookTitle;
  String authorName;

  @override
  void initState() {
    super.initState();
    bookImagePath = widget.book.image;
    authorImagePath = widget.book.author.authorPics;
    bookTitle = widget.book.title;
    authorName = widget.book.author.name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Hero(
                tag: "hero_book",
                child: Image.asset(bookImagePath, fit: BoxFit.cover)),
          ),
          Positioned(
            top: 15.0,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Theme.of(context).primaryColor,
                size: 30.0,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                ),
                color: Theme.of(context).primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 70.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      bookTitle,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      authorName,
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, size: 16.0, color: Color(0xfff75900)),
                        Icon(Icons.star, size: 16.0, color: Color(0xfff75900)),
                        Icon(Icons.star, size: 16.0, color: Color(0xfff75900)),
                        Icon(Icons.star, size: 16.0, color: Color(0xfff75900)),
                        Icon(Icons.star_border,
                            size: 16.0, color: Color(0xfff75900)),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text('4.14'),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Lorem Ipsum dolor jfkdf jieofsdkfjoajf djfafjjajf'
                      'difjpaf ajfkjap fjappjsdifa jjdkfsjlfkdjslfsdk'
                      'f jdsklfjdsfkslfjsljfakdjfafjsdjfsalfjsd;akfj'
                      'dkfjlsfja jfklajskjadfjdjfjfwofkdjfdsjfafjdslfjeie'
                      'djfsljalkdjfsljfjeif jfisdlfjadfjadf',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.465,
            left: 8.0,
            child: Container(
              height: 80.0,
              width: 70.0,
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(blurRadius: 6.0, offset: Offset(0.0, 0.75))
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image.asset(authorImagePath, fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 120.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0)),
            boxShadow: [
              BoxShadow(
                  blurRadius: 80.0,
                  offset: Offset(0.0, 0.75),
                  color: Colors.grey[400])
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CustomButton(
                color: Theme.of(context).accentColor,
                buttonText: 'Want to read',
                iconData: Icons.keyboard_arrow_down,
                onPressed: () {},
              ),
              CustomButton(
                color: Theme.of(context).primaryColor,
                buttonText: 'Get a copy',
                iconData: Icons.save,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
