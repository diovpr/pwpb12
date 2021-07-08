import 'package:flutter/material.dart';

InputDecoration buildInputDecoration({
required String label,  required String hintText}) {
  return InputDecoration(
    fillColor: Colors.white,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(
        color: Colors.redAccent,

      ),

    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        color: Colors.redAccent,
        width: 2.0,

      ),
    ),
    labelText: label,
    hintText: hintText,

  );
}
