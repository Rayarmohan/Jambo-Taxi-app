import 'package:get/get.dart';

class RatingController extends GetxController {
  var rating = 0.0.obs;

  void updateRating(double newRating) {
    rating.value = newRating;
  }
}
