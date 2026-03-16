import 'package:flutter/material.dart';
import 'package:qoute/components/quote/qoutePage.dart';
import '../profile/profilePAge.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Welcome to the Home Page!",
              style: TextStyle(fontSize: 24),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuoteList()),
                  );
                },
                label: Text("Go to Quotes"),
                icon: Icon(Icons.navigate_next),
              ),
              SizedBox(width: 16),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profilepage()),
                  );
                },
                label: Text("Go to profile"),
                icon: Icon(Icons.navigate_next),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
