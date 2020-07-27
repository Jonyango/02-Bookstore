import 'package:bookstore/components/app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children:<Widget>[
          CustomAppBar()
        ]
      ),
      
    );
  }
}