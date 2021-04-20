import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: App(),
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/flower.png'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[400],
            ),
            Text('NAME',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            SizedBox(height: 10),
            Text('Radi',
                style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2.0,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Text('Level',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            SizedBox(height: 10),
            Text('30',
                style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2.0,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey[400]),
                SizedBox(width: 10),
                Text('radi@mail.com',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18,
                        letterSpacing: 1.0))
              ],
            )
          ],
        ),
      ),
    );
  }
}
