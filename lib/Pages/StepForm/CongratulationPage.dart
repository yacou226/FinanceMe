import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class CongratulationPage extends StatefulWidget {
  const CongratulationPage({super.key});

  @override
  State<CongratulationPage> createState() => _CongratulationPageState();
}

class _CongratulationPageState extends State<CongratulationPage> {
   late ConfettiController _controller;



  @override
  void initState() {
    super.initState();
        _controller = ConfettiController(duration: const Duration(seconds: 4));
        _controller.play();


  }

  @override
  void dispose() {
 _controller.dispose();
    super.dispose();
  }




    @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your loading content here

            const SizedBox(height: 16),

           const Text('Felicitation!',style: TextStyle(color: Colors.green,fontSize: 18.0),),
           Image.asset('assets/validation.jpg',width: 200),
           const Text("Vous venez de creer votre demande de financement"),
            
            ConfettiWidget(
              confettiController: _controller,
              shouldLoop: false,

              blastDirection: -pi / 2, // Direction of the confetti blast
              emissionFrequency: 0.02, // How often confetti appears (try different values)
              numberOfParticles: 50, // Number of confetti particles in each blast
              colors: const [
                Colors.red,
                Colors.green,
                Colors.blue,
                Colors.yellow,
              ], // Colors of the confetti particles
            ),
          ],
        ),
      ),
    );
  }
}