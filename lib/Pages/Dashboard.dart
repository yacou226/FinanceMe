import 'dart:ui';

import 'package:finance_me/Components/AppBar.dart';
import 'package:finance_me/Components/BottomAppBar.dart';
import 'package:finance_me/Components/Card.dart';
import 'package:finance_me/Components/cardFinancier.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final String user = 'Japhet';
  final String projet = 'Vente de volaille';
  final int fonds = 10000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Bienvenue, $user",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 40,
                thickness: 6,
                color: Color.fromARGB(255, 73, 10, 115),
                indent: 20,
                endIndent: 250,
              ),
              card(),
              SizedBox(height: 20),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    cardFinancier("idee.png", "Vente de Lapin", 100000),
                    cardFinancier("invest.jpg", "Garbadromme", 50000),
                    cardFinancier("money1.jpg", "Ferme", 700000)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomAppBar(),
    );
  }
}
