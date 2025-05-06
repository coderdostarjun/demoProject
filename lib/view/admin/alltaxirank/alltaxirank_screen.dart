import 'package:demo_project/controller/allTaxi/all_taxi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common_widgets/common_elevated_button.dart';
import '../../../common_widgets/common_header.dart';
import '../../../common_widgets/common_texfield.dart';
class AlltaxirankScreen extends StatelessWidget {
 AlltaxirankScreen({super.key});
  AllTaxiController controller=Get.put(AllTaxiController());
  TextEditingController taxiTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [

                //header-->
                CommonHeader("Taxi Rank List"),
                SizedBox(
                  height: 32,
                ),
                //SearchBox-->
                CommonTextField("Enter Taxi Rank here....", taxiTextController),
                //SaveButton-->
                CommonElevatedButton("SAVE",onPressed: (){
                  controller.addTaxi(taxiTextController.text);
                  taxiTextController.clear();
                }),

                //List of Province -->
                Expanded(
                  child: Card(
                    elevation: 3,
                    color: Colors.white,
                    child: Obx(() => ListView.builder(
                      itemCount:controller.taxis.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(controller.taxis[index].taxiName),
                            // Delete icon
                            IconButton(
                              icon: Icon(Icons.delete_forever_rounded,
                                  color: Colors.red, size: 28),
                              onPressed: () {
                                controller.removeTaxi(index);
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
