import 'package:flutter/material.dart';
Widget CommonElevatedButton(String buttonName,{VoidCallback? onPressed})
{
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xff9D2D2A),
      padding: EdgeInsets.symmetric(
        horizontal: 60,
      ),
    ),
    onPressed:onPressed,
    child: Text(
      buttonName,
      style:
      TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}