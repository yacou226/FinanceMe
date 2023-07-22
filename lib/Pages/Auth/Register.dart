import 'package:finance_me/Components/TextField.dart';
import 'package:finance_me/Pages/Auth/LoginPage.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({super.key});
    final TextEditingController _textFieldController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Colors.white,
      body:SingleChildScrollView(
        child: Container(
          child:  Column(
            children : [
             const SizedBox(height: 50,),
             Image.asset('assets/logo.jpg'),
             const Padding(
                padding: EdgeInsets.only(left: 40),
                child: Text('Inscrivez vous en remplissant les formulaires',
                style: TextStyle(fontSize: 18.0),
                
                textAlign: TextAlign.center,),
              ),
             const  SizedBox(height: 20.0,),
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child:  Container(
                  
                  width: MediaQuery.of(context).size.width,
                  child:  Column(
                    children: [
                      
                      createTextFieldWithIcon('please enter your name', 'firstname', Icons.padding_outlined, _textFieldController),
                      createTextFieldWithIcon('please enter your lastname', 'lastname', Icons.email, _textFieldController),
                      createTextFieldWithIcon('please enter password', ' password', Icons.key_rounded, _textFieldController),
                      createTextFieldWithIcon('password', 'confirm password', Icons.key_rounded, _textFieldController),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                          },
                          child: Container(
                            
                            decoration: const BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.all(Radius.circular(10.0))
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: 50.0,
                                            
                            child: const Center(child: Text('Inscription',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),)),
                          ),
                        ),
                      )
                  
                    ],
                  ),
               
                  
                           ),
               )
            
      
            ]
          ),
        ),
      ) ,
    );
  }
}