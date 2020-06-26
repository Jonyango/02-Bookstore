import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
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
              backgroundImage: AssetImage('images/dp.jpg'),
            ),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(40.0))
        ),
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Discover Books'),
            TabBar(
              indicatorColor: Colors.red,
              indicatorWeight: 10.0,
              tabs: <Widget>[
                Tab(text: 'CLASSICS'),
                Tab(text: 'NEW'),
                Tab(text: 'UPCOMING'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        onTap: (index) {
          print(index);
        },
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
        currentIndex: 0,
        iconSize: 30.0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.save), title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.table_chart), title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity), title: Text('')),
        ],
      ),
    );
  }
}
