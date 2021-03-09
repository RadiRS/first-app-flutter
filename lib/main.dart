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
        child: IconButton(
            icon: Icon(Icons.alternate_email),
            onPressed: () => {print('Icon Pressed')},
            color: Colors.blueAccent),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('+'),
        onPressed: () => print('Floting Pressed'),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
