import 'package:flutter/material.dart';
import 'package:ninja_tuto/qoute.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  const QuoteCard({required this.quote, required this.delete, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            const SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14, color: Colors.grey[800]),
            ),
            const SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {
                delete();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.delete, color: Colors.grey),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Delete",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
