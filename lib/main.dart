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
      body: Center(
          child: Text(
        "Hello ninjas",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          letterSpacing: 2,
          color: Colors.grey[600],
          fontFamily: 'IndieFlower',
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('CLick'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
