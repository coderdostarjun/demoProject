import 'package:flutter/material.dart';

Widget CommonTextField(String hintText,TextEditingController textEditingcontroller)
{
  return TextField(
    controller: textEditingcontroller,
    decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.grey,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(width: 1, color: Colors.grey)),
        filled: true,
        fillColor: Colors.white,
        hintText:hintText),
    obscureText: false,
    keyboardType: TextInputType.text,
    maxLength: 40,
  );
}