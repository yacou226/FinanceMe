import 'dart:ui';

import 'package:finance_me/Components/AppBar.dart';
import 'package:finance_me/Components/BottomAppBar.dart';
import 'package:finance_me/Components/Card.dart';
import 'package:finance_me/Components/cardFinancier.dart';
import 'package:finance_me/Components/cartRelance.dart';
import 'package:flutter/material.dart';

import '../../Components/drawer.dart';

class Relance extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: buildDrawer(context),
      bottomNavigationBar: MyBottomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              cardRelance("idee.png", "Vente de Lapin", 100000),
              cardRelance("invest.jpg", "Garbadromme", 50000),
              cardRelance("money1.jpg", "Ferme", 700000)
            ],
          ),
        ),
      ),
    );
  }
}
