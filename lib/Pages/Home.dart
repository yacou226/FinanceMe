import 'package:finance_me/Components/Buttons.dart';
import 'package:finance_me/Pages/Auth/LoginPage.dart';
import 'package:finance_me/Pages/Auth/Register.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/invest.jpg'),
            SizedBox(
              height: 10.0,
            ),
            const Text('Hey! Welcome',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Créer un compte dès aujourd'hui et bénéficier de financements pour vos projets",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            InkWell(
                child: buttons("COMMENCER"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
              ),
             InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Color.fromARGB(150, 73, 10, 115),
                    ),
                    child: const Center(
                      child: Text(
                        "J'ai déjà un compte",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
