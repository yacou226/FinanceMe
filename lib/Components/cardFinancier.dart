import 'dart:ffi';

import 'package:flutter/material.dart';

Widget cardFinancier(String img, String intituleProjet, int montant) {
  return Padding(
    padding:const EdgeInsets.only(top: 8),
    child: Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: Colors.white,
      child: ListTile(
        leading: Image.asset(
          "assets/$img",
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text(
          intituleProjet,
          style: const TextStyle(
            color: Colors.purple,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          '$montant FCFA',
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
    ),
  );
}
