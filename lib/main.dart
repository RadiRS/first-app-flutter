import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  // same as class component
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Frans Lipan', text: 'Debitis quia ab magni sunt et iste.'),
    Quote(author: 'Arthor Brai', text: 'Iusto ea suscipit et.'),
    Quote(author: 'Brian Lai', text: 'Ab at similique consequuntur vel.'),
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
        children: quotes.map((item) => QuoteCard(quote: item)).toList(),
      ),
    );
  }
}
