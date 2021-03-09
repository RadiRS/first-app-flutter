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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [Text('Hellow Row 1'), Text('Hellow Row 2')],
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.cyan,
            child: Text('Container One'),
          ),
          Container(
            padding: EdgeInsets.all(30),
            color: Colors.pinkAccent,
            child: Text('Container Two'),
          ),
          Container(
            padding: EdgeInsets.all(40),
            color: Colors.amber,
            child: Text('Container Three'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('+'),
        onPressed: () => print('Floting Pressed'),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
