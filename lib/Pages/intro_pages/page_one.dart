import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(decoration: const BoxDecoration(
      color: Colors.white
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/idee.png'),
        Text('dfdffgf')
      ],
    ),
    );
  }
}