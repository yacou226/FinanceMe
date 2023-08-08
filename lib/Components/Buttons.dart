import 'package:flutter/material.dart';

Widget buttons(String texte) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      height: 50,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Color.fromARGB(255, 73, 10, 115)),
      child: Center(
          child: Text(
        texte,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      )),
    ),
  );
}
