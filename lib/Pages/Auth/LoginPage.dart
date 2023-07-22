import 'package:finance_me/Pages/Auth/Register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 237, 234),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Hello,Againt!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22.0),
              ),
            ),
            const Text('Welcom back, you are been missed'),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                padding: EdgeInsets.all(8.0),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Name',
                    prefixIcon: Icon(Icons.email_outlined)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white),
                child:  const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '**************',
                    prefixIcon: Icon(Icons.key),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                    Expanded(child: Container()),
         
              const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child:  TextButton(onPressed:null,
                child: Text('mot de passe oublier !',style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,fontSize: 14.0
                ),)),
              ),
              ],
            ),

          
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => RegisterPage()));
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.amber,
                  ),
                  child: const Center(
                      child: Text(
                    'Connexion',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
