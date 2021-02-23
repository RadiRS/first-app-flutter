import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text('Learning Flutter',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.grey[600],
                fontFamily: 'Lato')),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: () => print('Pressed'),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
