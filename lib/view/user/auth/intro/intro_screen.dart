import 'package:demo_project/common_widgets/custom_action_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../register/register_screen.dart';
class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xff9D2D2A),
                ),
              ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(42),

              ),
              child: Column(
                children: [
                  SizedBox(height: 65,),
                  Container(child: Image.asset("assets/images/taxi img 1.png")),
                  SizedBox(height: 65,),
                  Image.asset("assets/images/Customer reviews.png"),
                  SizedBox(height: 20,),
                  Text("Rate, review, and report your taxi rides to help \n make transportation safer and better for everyone.",style: TextStyle(fontSize: 16,color: Colors.grey),),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: ()=>Get.to(()=>RegisterScreen()),
                      
                      child: CustomButton("GET STARTED")),
                  SizedBox(height: 50,),
                  Text("Taxini App V 1.0",style: TextStyle(fontSize: 11,color: Colors.grey),),
                ],
              ),
            ),
          ],
        ),),
    );
  }
}
