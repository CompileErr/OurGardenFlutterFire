import 'package:flutter/material.dart';

class MyDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('This is the MyDetailsScreen screen'),
      ),
    );
  }
}