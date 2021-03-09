import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screens'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Image.asset('assets/flowers.png'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('+'),
        onPressed: () => print('Pressed'),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
