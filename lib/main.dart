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
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: EdgeInsets.all(20),
        color: Colors.grey[400],
        child: Text('Hello'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('+'),
        onPressed: () => print('Floting Pressed'),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
