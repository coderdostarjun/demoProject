import 'package:flutter/material.dart';
Widget CustomButton(String text)
{
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 22,vertical: 5),
    decoration: BoxDecoration(
      color: Color(0xff9D2D2A),
      borderRadius: BorderRadius.circular(18),
    ),
child:Text(text,style: TextStyle(color: Colors.white),),
);
}