import 'package:demo_project/common_widgets/common_elevated_button.dart';
import 'package:demo_project/common_widgets/common_header.dart';
import 'package:demo_project/common_widgets/common_texfield.dart';
import 'package:demo_project/controller/demoController.dart';
import 'package:demo_project/controller/allProvince/province_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_screen.dart';

class ProvinceScreen extends StatelessWidget {
  ProvinceScreen({super.key});
  //creating obj of an controller
  ProvinceController controller=Get.put(ProvinceController());
  TextEditingController province = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            //header-->
            CommonHeader("All Province"),
            SizedBox(
              height: 32,
            ),
            //SearchBox-->
            CommonTextField("Enter Province here....", province),
            //SaveButton-->
          CommonElevatedButton("SAVE",onPressed: (){
            controller.addProvince(province.text);
            province.clear();
          }),

            //List of Province -->
            Expanded(
              child: Card(
                elevation: 3,
                color: Colors.white,
                child: Obx(() => ListView.builder(
                  itemCount:controller.provinces.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 6.0, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(controller.provinces[index].provinceName),
                        // Delete icon
                        IconButton(
                          icon: Icon(Icons.delete_forever_rounded,
                              color: Colors.red, size: 28),
                          onPressed: () {
                              controller.deleteProvince(index);
                          },
                        )
                      ],
                    ),
                  ),
                ),),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
