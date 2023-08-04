import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('flutter Provider '),actions: [Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Icon(Icons.air_outlined),
      )],),
    );
  }
}
