import'package:flutter/material.dart';

class StepFormPage extends StatefulWidget {
  const StepFormPage({super.key});

  @override
  State<StepFormPage> createState() => _StepFormPageState();
}

class _StepFormPageState extends State<StepFormPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.amber,
        width: 50.0,
        height: 50.0,
      ),
    );
  }
}
