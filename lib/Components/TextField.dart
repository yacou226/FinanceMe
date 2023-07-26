import 'package:flutter/material.dart';

Widget createTextFieldWithIcon(
  String hintText,
  String labelText,
  IconData iconData,
  TextEditingController controller,
) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(iconData),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          contentPadding: EdgeInsets.zero,
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.never, // Added this line
        ),
      ),
    ),
  );
}
