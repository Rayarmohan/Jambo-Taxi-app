import 'package:get/get.dart';

class WelcomeController extends GetxController{

  var isChecked1 = true.obs;
  var isChecked2 = true.obs;
  var isChecked3 = true.obs;


  void setIsChecked1(bool value) {
    isChecked1.value = value;
  }

    void setIsChecked2(bool value) {
    isChecked2.value = value;
  }

  void setIsChecked3(bool value) {
    isChecked3.value = value;
  }

}