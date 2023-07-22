import 'package:flutter/material.dart';

Widget createTextFieldWithIcon(
    String hintText,
    String labelText,
    IconData iconData,
    TextEditingController controller,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            Icon(iconData),
            const SizedBox(width: 10.0),
            Expanded(
              child: TextFormField(
              
                controller: controller,
                decoration: InputDecoration(
                  labelText: labelText,
                  hintText: hintText,
                  border: InputBorder.none,

                  
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
