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
      body: Row(
        children: [
          Expanded(flex: 3, child: Image.asset('assets/flowers.png')),
          Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.cyan,
                child: Text('1'),
              )),
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.pinkAccent,
                child: Text('2'),
              )),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.amber,
            child: Text('3'),
          ),
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
