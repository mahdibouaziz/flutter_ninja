import 'package:flutter/material.dart';
import 'package:ninja_tuto/quote_card.dart';
import 'qoute.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    // ignore: prefer_const_constructors
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Osca wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Osca wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Osca wilde',
        text: 'The truth is rarely pure and never simple'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
