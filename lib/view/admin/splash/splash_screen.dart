import 'dart:async';

import 'package:demo_project/view/admin/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../user/auth/intro/intro_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Get.to(HomeScreen());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset("assets/images/SPLASHCSREEN_admin.png"),
      ),
    );
  }
}
