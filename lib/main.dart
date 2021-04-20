import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> queotes = [
    'Ut velit iste perspiciatis rerum incidunt corporis.',
    'Dicta asperiores sint magni architecto mollitia repellendus aperiam.',
    'Vel qui delectus atque.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: queotes.map((item) => Text(item)).toList(),
      ),
    );
  }
}
