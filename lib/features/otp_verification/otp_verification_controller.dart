import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpVerificationController extends GetxController {
  List<FocusNode> focusNodes = List.generate(4, (_) => FocusNode());
  List<TextEditingController> controllers = List.generate(4, (_) => TextEditingController());
}