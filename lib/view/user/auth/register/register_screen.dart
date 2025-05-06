import 'package:flutter/material.dart';

import '../../../../common_widgets/custom_action_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(42),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),),

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 65,),
                  Container(child: Image.asset("assets/images/Taxini App Logo 2.png")),
                  Text("REGISTER",style: TextStyle(fontSize: 16,color: Colors.grey),),
                  Container(
                      padding: EdgeInsets.only(left: 38,right: 16,top: 12),
                      child: Text("See what other riders are saying about  drivers, cars, and ride experiences before you hop in.",style: TextStyle(fontSize: 10,color: Colors.grey),)),
                  SizedBox(height: 20,),
                  CustomButton("GET STARTED"),
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
