import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContextcontext) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 232, 229, 229),
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          shadowColor: Color.fromARGB(255, 80, 27, 215),
          title: const Text("Container example"),
        ),
        body: Container(
          //alignment: Alignment.center,
          height: 100,
          width: double.infinity,
          color: Color.fromARGB(255, 245, 245, 135),
          margin: EdgeInsets.all(20),
          child: const Text(
            'Hello, I am inside container!',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
