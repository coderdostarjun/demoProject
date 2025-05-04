import 'package:demo_project/controller/demoController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_screen.dart';

class ProvinceScreen extends StatelessWidget {
  ProvinceScreen({super.key});
  DemoController controller = DemoController();

  TextEditingController province = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            //heading-->
            Row(
              children: [
                InkWell(
                    onTap: () => Get.to(HomeScreen()),
                    child: Icon(Icons.arrow_back, color: Colors.red, size: 28)),
                SizedBox(
                  width: 90,
                ),
                Text(
                  'All Province',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff13165B),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),

            //SearchBox-->
            TextField(
              controller: province,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(width: 1, color: Colors.grey)),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter Province here...."),
              obscureText: false,
              keyboardType: TextInputType.text,
              maxLength: 30,
            ),

            //SaveButton-->
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff9D2D2A),
                padding: EdgeInsets.symmetric(
                  horizontal: 60,
                ),
              ),
              onPressed: () {},
              child: Text(
                'SAVE',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),

            //List of Province -->
            Expanded(
              child: Card(
                elevation: 3,
                color: Colors.white,
                child:   Obx(() => ListView.builder(
                  itemCount:controller.defaultProvinces.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 6.0, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(controller.defaultProvinces[index]),
                        // Delete icon
                        IconButton(
                          icon: Icon(Icons.delete_forever_rounded,
                              color: Colors.red, size: 28),
                          onPressed: () {
                            controller.defaultProvinces.removeAt(index);
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
