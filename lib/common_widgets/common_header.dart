import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../view/admin/home/home_screen.dart';

Widget CommonHeader(String headerName)
{
  return Row(
    children: [
      InkWell(
          onTap: () => Get.to(HomeScreen()),
          child: Icon(Icons.arrow_back, color: Colors.red, size: 28)),
      SizedBox(
        width: 90,
      ),
      Text(
        headerName,
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Color(0xff13165B),
        ),
      ),
    ],
  );
}