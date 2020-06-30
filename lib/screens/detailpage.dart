import 'package:bookstore/components/custom_button.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height * 0.6,
            child: Image.asset("assets/images/book5.png", fit: BoxFit.cover),
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
              height: MediaQuery.of(context).size.height * 0.40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                ),
                color: Theme.of(context).primaryColor,
              ),
              child: Column(
                children: <Widget>[],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.42,
            left: 8.0,
            child: Container(
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
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child:
                    Image.asset("assets/images/philip.jpg", fit: BoxFit.cover),
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
