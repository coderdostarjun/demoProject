import 'package:demo_project/model/province/province_model.dart';
import 'package:get/get.dart';
class ProvinceController extends  GetxController
{
  var provinces=<Province>[].obs;

  //addProvince
void addProvince(String name)
{
  if(name.trim().isNotEmpty)
    {
      //calling constuctor i.e creating an object of Province model  and added inside a rxlist
      provinces.add(Province(provinceName: name.trim()));
    }
}
void deleteProvince(int index)
{
  provinces.removeAt(index);
}
}