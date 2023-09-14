import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContextcontext) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container example"),
        ),
        body: Container(
          child: const Text(
            'Hello i am inside container!',
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
