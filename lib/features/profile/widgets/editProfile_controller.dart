import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditprofileCon extends GetxController {
   var dropdownValue = '+91'.obs;
  var citydropdownValue = 'Nairobi,Africa'.obs;

  TextEditingController editController = TextEditingController();

   void setDropdownValue(String value) {
    dropdownValue.value = value;
    update();
  }

   void setCityDropdownValue(String value) {
    citydropdownValue.value = value;
    update();
  }

  
}




 
   
