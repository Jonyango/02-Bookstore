import 'package:flutter/material.dart';

final List<Tab> myTabs = [
  Tab(text: 'CLASSICS'),
  Tab(text: 'NEW'),
  Tab(text: 'UPCOMING'),
];

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 15.0,
                offset: Offset(0.0, 0.75))
          ],
          borderRadius:
              BorderRadius.only(bottomRight: Radius.circular(40.0))),
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Discover books',
              style:
                  TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
            ),
          ),
          DefaultTabController(
            length: myTabs.length,
            child: ClipRRect(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(40.0)),
              child: TabBar(
                tabs: myTabs,
                indicatorColor: Theme.of(context).accentColor,
                indicatorWeight: 3.0,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 30.0),
                unselectedLabelStyle:
                    TextStyle(fontWeight: FontWeight.w600),
                labelColor: Theme.of(context).accentColor,
                labelStyle: TextStyle(
                    letterSpacing: 1.5, fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
