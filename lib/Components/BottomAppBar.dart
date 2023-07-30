import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(home: MyBottomAppBar()));

class MyBottomAppBar extends StatelessWidget {
  final  color = Color.fromARGB(255, 73, 10, 115);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: Colors.white,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.home, color: color),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: IconButton(
              icon: Icon(Icons.share, color: color, size: 30),
              onPressed: () {},
            ),
          ),
          IconButton(
            icon: Icon(Icons.settings, color: color),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
