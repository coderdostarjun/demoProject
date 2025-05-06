import 'package:demo_project/controller/allTaxi/all_taxi_controller.dart';
import 'package:demo_project/model/allDriver/allDriverModel.dart';
import 'package:get/get.dart';


class AllDriverController extends GetxController
{
  AllTaxiController controller=Get.put(AllTaxiController());
  var drivers=<AllDriverModel>[].obs;

  //add drivers

void addDriver(String name)
  {
    if(name.isNotEmpty)
      {
        drivers.add(AllDriverModel(driverName: name, taxiRank:controller.taxis[0].taxiName , rating: 3, reviews: 25));
      }
  }
  //remove driver
 void removeDriver(int index)
 {
   drivers.removeAt(index);
 }
}