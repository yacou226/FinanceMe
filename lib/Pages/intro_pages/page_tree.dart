import 'package:flutter/material.dart';

class PageTree extends StatelessWidget {
  const PageTree({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(decoration: const BoxDecoration(
      color: Colors.white
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/no_money.png'),
        const Text('dfdffgf')
      ],
    ),
    );
  }
}