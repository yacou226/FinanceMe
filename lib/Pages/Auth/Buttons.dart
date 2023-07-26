import 'package:flutter/material.dart';

Widget buttons(String texte) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      height: 50,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Color.fromRGBO(54, 18, 51, 1)),
      child: Center(
          child: Text(
        texte,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      )),
    ),
  );
}
