import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text('Hello World',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.grey[600],
                fontFamily: 'Lato')),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: () => print('Press'),
        backgroundColor: Colors.redAccent,
      ),
    ),
  ));
}
