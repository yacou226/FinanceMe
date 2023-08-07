import 'dart:io';
import 'package:finance_me/Pages/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:editable_image/editable_image.dart';

import '../../Components/AppBar.dart';
import '../../Components/BottomAppBar.dart';
import '../../Components/Buttons.dart';
import '../../Components/TextField.dart';
import '../../Components/drawer.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final TextEditingController emailModificationController =
      TextEditingController();
  final TextEditingController nameModificationController =
      TextEditingController();

  File? _profileImage;
  final _defaultImage = Image.asset(
      'assets/logo.jpg'); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: buildDrawer(context),
      bottomNavigationBar: MyBottomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EditableImage(
                
                imageBorder: Border.all(color: const  Color.fromARGB(255, 73, 10, 115),width: 2),
               image: _profileImage != null
                    ? Image.file(_profileImage!, fit: BoxFit.cover)
                    : _defaultImage,
                onChange: (image) {
                  setState(() {
                    _profileImage = image;
                  });
                },
                
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 73, 10, 115)
                  ,
                  width: 2),
                  
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          createTextFieldWithIcon(
                            "Nom",
                            "Nouveau Nom",
                            Icons.person,
                            nameModificationController,
                          ),
                          createTextFieldWithIcon(
                            "Email",
                            "Nouveau Mail",
                            Icons.email_outlined,
                            emailModificationController,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 73, 10, 115),
                  width: 2),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          createTextFieldWithIcon(
                            "Mot de passe",
                            "Nouveau Mot de passe",
                            Icons.key,
                            nameModificationController,
                          ),
                          createTextFieldWithIcon(
                            "Mot de passe",
                            "Confirmer Nouveau Mot de passe",
                            Icons.key,
                            nameModificationController,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              InkWell(
                child: buttons("ENREGISTRER"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dashboard()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
