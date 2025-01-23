import 'package:get/get.dart';

class SliderIndicatorController extends GetxController{
  RxInt currentIndex=0.obs;
  RxInt prodcutDetailscurrentIndex=0.obs;

  void onchangeindex(int index){
    currentIndex.value=index;

  }
  void productDetailsonchangeindex(int index){
    prodcutDetailscurrentIndex.value=index;

  }
}