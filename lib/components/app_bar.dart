import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final List<Tab>myTabs =[
    Tab(text: 'CLASSICS'),
    Tab(text: 'NEW'),
    Tab(text:'UPCOMING'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:<Widget>[
          Padding(
            padding: EdgeInsets.only(left:8.0, top:8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child:Icon(Icons.sort),
              ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(12.0)
              ),
              child:Image(
                image:AssetImage('assets/image1.jpg')
              )
            ),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:8.0),
              child: Text(
                'Discover books',
                style: TextStyle(
                  fontSize:30.0,
                  fontWeight:FontWeight.w500
                ),
              ),
            ),
            DefaultTabController(
              length: myTabs.length, 
              child: ClipRRect(
                borderRadius:BorderRadius.only(bottomRight:Radius.circular(40.0)),
                child: TabBar(
                  tabs: myTabs,
                  indicatorColor: Theme.of(context).accentColor,
                  indicatorWeight: 3.0,
                  indicatorPadding: EdgeInsets.symmetric(horizontal:30.0),
                  unselectedLabelStyle: TextStyle(
                    fontWeight:FontWeight.w600,
                    ),
                  labelColor: Theme.of(context).accentColor,
                  labelStyle: TextStyle(
                    letterSpacing:1.5,
                    fontWeight:FontWeight.bold,
                  ),
                  unselectedLabelColor:Colors.grey          
                  ),
              ),
              ),
        ]
      ),
      
    );
  }
}