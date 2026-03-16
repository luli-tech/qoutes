import 'package:flutter/material.dart';
import 'qouteStruct.dart';

class QuoteCard extends StatelessWidget {
  final Qoute quote;
  final void Function(Qoute) onDelete;

  const QuoteCard({super.key, required this.quote, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            const SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14, color: Colors.grey[800]),
            ),
            ElevatedButton.icon(
              onPressed: () {
                onDelete(quote);
              },
              icon: Icon(Icons.delete, color: Colors.black),
              label: Text("Delete", style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                elevation: 0,
                padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
