import 'package:flutter/material.dart';
import 'qouteStruct.dart';
import 'quote_card.dart';

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QouteListState();
}

class _QouteListState extends State<QuoteList> {
  List<Qoute> quotes = [
    Qoute(
      text: "Be yourself; everyone else is already taken.",
      author: "Oscar Wilde",
    ),
    Qoute(
      text:
          "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.",
      author: "Albert Einstein",
    ),
    Qoute(text: "So many books, so little time.", author: "Frank Zappa"),
    Qoute(
      text: "A room without books is like a body without a soul.",
      author: "Marcus Tullius Cicero",
    ),
  ];
  void deleteQuote(Qoute quote) {
    setState(() {
      quotes.remove(quote);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Awesome Quotes"), centerTitle: true),
      body: Column(
        children: quotes
            .map(
              (quote) =>
                  QuoteCard(quote: quote, onDelete: (q) => deleteQuote(q)),
            )
            .toList(),
      ),
    );
  }
}
