import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text(
          'Current Date and Time: 2026-02-26 13:26:50',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
