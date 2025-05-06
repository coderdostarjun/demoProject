import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_screen.dart';
class AllBannerScreen extends StatelessWidget {
  const AllBannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Container(
          padding: EdgeInsets.all(20),
          child:Column(
            children: [
                Row(
                  children: [
                    InkWell(
                        onTap: ()=>Get.to(HomeScreen()),
                        child: Icon(Icons.arrow_back, color: Colors.red, size: 28)),
                    SizedBox(width: 90,),
                    Text(
                      'All Banners',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff13165B),
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 32,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 123,
                    width: 198,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                    ),
                    child: Center(
                      child: Text(
                        '+ Upload Here',
                        style: TextStyle(fontSize: 14,color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff9D2D2A),
                  padding: EdgeInsets.symmetric(horizontal: 60, ),
                ),
                onPressed: () {},
                child: Text(
                  'SAVE',
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 20),
                    child: Row(
                      children: [
                        Card(
                          elevation: 2,
                          child: Container(
                            height: 60,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 0.1
                              ),
                              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2)],
                            ),
                          ),
                        ),
                       SizedBox(width: 50,),
                        // Delete icon
                        IconButton(
                          icon: Icon(Icons.delete_forever_rounded, color: Colors.red, size: 28),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
    );
  }
}
