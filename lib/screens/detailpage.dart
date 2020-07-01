import 'package:bookstore/components/custom_button.dart';
import 'package:bookstore/models/book.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage({@required this.book, @required this.heroTag});

  final Book book;
  final String heroTag;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  double rating;

  List<IconData> _buildIcons(double r) {
    List<IconData> iconList = [];

    int leftIconToBuild = 5 - r.toInt();

    // build the main stars
    for (int i = 0; i < r.toInt(); i++) {
      iconList.add(Icons.star);
    }

    // when done with main stars, build for half star
    if (r > r.toInt()) {
      iconList.add(Icons.star_half);
      leftIconToBuild--;
    }

    for (int j = 0; j < leftIconToBuild; j++) {
      iconList.add(Icons.star_border);
    }

    return iconList;
  }

  @override
  void initState() {
    super.initState();
    rating = widget.book.rating;
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
              tag: widget.heroTag,
              child: Image.asset(widget.book.image, fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 20.0,
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
                      widget.book.title,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      widget.book.author.name,
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: _buildIcons(rating)
                              .map((e) =>
                                  Icon(e, size: 16.0, color: Color(0xfff75900)))
                              .toList(),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(rating.toString()),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      widget.book.description,
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
                child: Image.asset(widget.book.author.authorPics,
                    fit: BoxFit.cover),
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
