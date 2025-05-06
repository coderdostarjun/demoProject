import 'package:flutter/material.dart';
Widget menuItem(IconData icon, String title,{Color? iconColor, Color? textColor,VoidCallback? onTab}) {
  return ListTile(
    leading: Icon(icon, color: iconColor ?? Colors.black),
    title: Text(title, style: TextStyle(
        color: textColor ?? Colors.black, fontWeight: FontWeight.bold)),
    onTap: onTab,
  );
}