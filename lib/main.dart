import 'package:flutter/material.dart';
import 'screens/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffffffff),
        accentColor: Color(0xfff62e2e),
      ),
      home: MyHomePage(),
    );
  }
}
