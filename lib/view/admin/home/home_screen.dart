import 'package:demo_project/view/admin/alldriver/alldriver_rank_screen.dart';
import 'package:demo_project/view/admin/alltaxirank/alltaxirank_screen.dart';
import 'package:demo_project/view/admin/home/widget/menu_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../admin/province/province_screen.dart';
import '../allbanner/all_banner_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final String reviewText =
      "Our drivers, Asanka and Sahlan, were extremely kind, friendly and always did their best to satisfy all our demands. We felt very safe. The car was clean";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [

              //DrawerHeader-->
              Container(
                height: 120,
                child: DrawerHeader(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Text('Dashboard',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff13165B))),
                ),
              ),

              //DrawerHeaderMenuItems-->
              menuItem(Icons.home, "Reviews & Rate",
                  textColor: Color(0xffAE1A22)),
              InkWell(
                  onTap: (){
                    Get.back();
                    Get.to(AllBannerScreen());
                  },
                  child: menuItem(Icons.image, "All Banners")),
              InkWell(
                  onTap: () {
                    Get.back();
                    Get.to(ProvinceScreen());
                  },
                  child: menuItem(Icons.location_pin, "All Province")),
              InkWell(
                  onTap: (){
                    Get.back();
                    Get.to(()=>AlltaxirankScreen());
                  },
                  child: menuItem(Icons.local_taxi, "All Taxi Rank")),
              InkWell(
                  onTap: (){
                    Get.back();
                    Get.to(()=>AlldriverRankScreen());
                  },
                  child: menuItem(Icons.person, "All Driver")),
              SizedBox(height: 30,),
              menuItem(Icons.logout, "LogOut",
                  iconColor: Colors.red,)
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Dashboard',
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: Color(0xff13165B)),
        ),
      ),

  //List of Items-->
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      reviewText,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                  ),
                  // Trailing buttons
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.delete_forever_rounded,
                            color: Colors.red),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.undo, color: Colors.red),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
