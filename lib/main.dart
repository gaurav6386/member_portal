import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() =>  runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes=[
    Quote(author: 'Os', text: 'utcgvh o.p;oxtfesdo;prcy pvytedfkj'),
    Quote(author: 'Richard Halsy', text: 'utcgvh o.p;oxtfesdo;prugjbcy pvytedfkj'),
    Quote(author: 'William Shakespeare', text: 'ugh o.p;oxtfesdo;prcy pvytedfkj')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
                quotes.remove(quote);
            },
        )).toList(),
      ),
    );
  }
}




