import 'package:demo_project/model/allDriver/allDriverModel.dart';
import 'package:demo_project/model/allTaxi/all_taxi_model.dart';
import 'package:get/get.dart';

class AllTaxiController extends GetxController
{
  var taxis=<AllTaxiModel>[].obs;

  //add drivers

  void addTaxi(String name)
  {
    if(name.isNotEmpty)
    {
      taxis.add(AllTaxiModel(taxiName: name));
    }
  }

  //remove driver
  void removeTaxi(int index)
  {
    taxis.removeAt(index);
  }
}