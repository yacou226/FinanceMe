import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration:const  BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/invest.jpg'),
            const SizedBox(height: 10.0,),
           const  Text('Hey! Welcome',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text('Commencer dès mainnant a creer un compte pour avoir acces a un financement',textAlign: TextAlign.center,)),
            const SizedBox(height: 15.0,),
                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding:const EdgeInsets.all(12.0),
                    decoration: const BoxDecoration(
                      borderRadius:  BorderRadius.all(const Radius.circular(10.0)),
                      color: Color.fromARGB(255, 152, 202, 98)
                    ),
                    child: const Text('Get Started',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0),),
                   ),
                 ),
                 
                 const TextButton(onPressed: null,
                 child: Text("J'ai deja un Compte"))
          ],
        ),
      ),
    );
  }
}