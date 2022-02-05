import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("my first app"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Container(
        color: Colors.grey[400],
        child: const Text('Click') ,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(15),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        child: const Text('CLick'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
