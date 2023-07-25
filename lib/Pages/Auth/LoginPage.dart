import 'package:finance_me/Pages/Auth/Register.dart';
import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';
// Import de la bibliothèque d'icônes

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 237, 234),
      appBar: AppBar(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(0.0),
              child: Icon(
                Icons.person_outline, // Utilisation de l'icône person
                size: 70.0,
                color: Colors.purple,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Hello Again!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
            ),
            const Text('Welcome back, you are been missed'),
            const SizedBox(
              height: 20.0,
            ),

            //Input E-mail
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    contentPadding: EdgeInsets.zero,
                    hintText: 'E-Mail',
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white),
                child: const TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    prefixIcon: Icon(Icons.key),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    contentPadding: EdgeInsets.zero,
                    hintText: '********',
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
                  child: TextButton(
                      onPressed: null,
                      child: Text(
                        'Mot de passe oublié !',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                      )),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()));
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.purple,
                  ),
                  child: const Center(
                      child: Text(
                    'CONNEXION',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
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
