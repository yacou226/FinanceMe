import 'package:finance_me/Components/ImageLogo.dart';
import 'package:finance_me/Components/TextField.dart';
import 'package:finance_me/Pages/Auth/Register.dart';
import 'package:finance_me/Pages/Dashboard.dart';
import 'package:flutter/material.dart';

import '../../Components/Buttons.dart';

bool verificationConnexion(
    TextEditingController mail, TextEditingController pwd) {
  var response = false;
  if (mail.text == "admin" && pwd.text == "admin") {
    response = true;
  } else {
    response = false;
  }

  return response;
}

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  String text = 'Welcome back, you are been missed';

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imageLogo(),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Hello Again!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
              ),
              Text(text),
              const SizedBox(
                height: 15.0,
              ),
              //Input E-mail
              createTextFieldWithIcon("Please enter your e-mail", "E-mail",
                  Icons.email_outlined, emailController),
              createTextFieldWithIcon("********", "Password",
                  Icons.key_outlined, passwordController),
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
                    if (verificationConnexion(
                            emailController, passwordController) ==
                        true) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Dashboard()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                              Text("Erreur dans le mot de passe ou le mail"),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
                  },
                  child: buttons("CONNEXION"))
            ],
          ),
        ));
  }
}
