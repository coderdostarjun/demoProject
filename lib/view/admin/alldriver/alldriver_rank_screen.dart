import 'package:demo_project/controller/allDriver/all_driver_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../common_widgets/common_elevated_button.dart';
import '../../../common_widgets/common_header.dart';
import 'package:get/get.dart';
import '../../../common_widgets/common_texfield.dart';
class AlldriverRankScreen extends StatelessWidget {
  AlldriverRankScreen({super.key});
  AllDriverController controller=Get.put(AllDriverController());
  TextEditingController allDriver = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                //header-->
                CommonHeader("Taxi Driver List"),
                SizedBox(
                  height: 32,
                ),
                //SearchBox-->
                CommonTextField("Enter Driver's Name & All Details here", allDriver),

                //SaveButton-->
                CommonElevatedButton("SAVE",onPressed: ()
                {
                  controller.addDriver(allDriver.text);
                  allDriver.clear();
                }),

                //List of Province -->
                Expanded(
                  child: Card(
                    elevation: 3,
                    color: Colors.white,
                    child: Obx(() => ListView.builder(
                      itemCount:controller.drivers.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(controller.drivers[index].driverName,style:TextStyle(fontSize: 14,color: Colors.black),),
                            Text(controller.drivers[index].taxiRank),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                    'Rating ${controller.drivers[index].rating}  Reviews ${controller.drivers[index].reviews}',style: TextStyle(fontSize: 14,color: Color(0xff989393)),),                                // Delete icon
                                IconButton(
                                  icon: Icon(Icons.delete_forever_rounded,
                                      color: Colors.red, size: 28),
                                  onPressed: () {
                                    controller.removeDriver(index);
                                  },
                                )
                              ],
                            ),
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
