import 'package:flutter/material.dart';
import "qoute.dart";

void main() {
  return runApp(MaterialApp(home: QuoteList()));
}

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
  Widget qouteTemplate(qoute) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              qoute.text,
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            SizedBox(height: 6),
            Text(
              qoute.author,
              style: TextStyle(fontSize: 14, color: Colors.grey[800]),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesom Qoutes", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => qouteTemplate(quote)).toList(),
      ),
    );
  }
}
