import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(decoration: const BoxDecoration(
      color: Colors.white
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/invest.jpg'),
       const Text('dfdffgf')
      ],
    ),
    );
  }
}