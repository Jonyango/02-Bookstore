import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

final List<Tab> myTabs = [
  Tab(text: 'CLASSICS'),
  Tab(text: 'NEW'),
  Tab(text: 'UPCOMING'),
];

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentBottomIndex = 0;

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
              backgroundImage: AssetImage('assets/images/dp.jpg'),
            ),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
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
                style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
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
                  unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
                  labelColor: Theme.of(context).accentColor,
                  labelStyle: TextStyle(
                      letterSpacing: 1.5, fontWeight: FontWeight.bold),
                  unselectedLabelColor: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(40.0))),
        child: ClipRRect(
          borderRadius: BorderRadius.only(topRight: Radius.circular(20.0)),
          child: BottomNavigationBar(
            elevation: 10.0,
            backgroundColor: Theme.of(context).primaryColor,
            onTap: (index) {
              print(index);
            },
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Theme.of(context).accentColor,
            currentIndex: 0,
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
