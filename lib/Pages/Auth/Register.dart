import 'package:finance_me/Components/ImageLogo.dart';
import 'package:finance_me/Components/TextField.dart';
import 'package:finance_me/Components/Buttons.dart';
import 'package:finance_me/Pages/Auth/LoginPage.dart';
import 'package:finance_me/Pages/StepForm/StepFormPage.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final TextEditingController _nameRegisterController = TextEditingController();
  final TextEditingController _emailRegisterController =
      TextEditingController();
  final TextEditingController _passwordRegisterController =
      TextEditingController();
  final TextEditingController _confirmPasswordRegisterController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(
            height: 50,
          ),
          imageLogo(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Inscrivez vous en remplissant les formulaires',
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                createTextFieldWithIcon(
                    'Please enter your full name',
                    'Fullname',
                    Icons.padding_outlined,
                    _nameRegisterController),
                createTextFieldWithIcon('Please enter your E-mail', 'E-mail',
                    Icons.email, _emailRegisterController),
                createTextFieldWithIcon('Please enter password', ' Password',
                    Icons.key_rounded, _passwordRegisterController),
                createTextFieldWithIcon('Password', 'Confirm password',
                    Icons.key_rounded, _confirmPasswordRegisterController),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const StepFormPage()));
                    },
                    child: buttons("INSCRIPTION")),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
