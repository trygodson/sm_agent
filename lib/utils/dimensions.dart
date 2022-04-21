import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double getProportionalHeight(double height) {
    return screenHeight / (screenHeight / height);
  }

  static double getProportionalWidth(double width) {
    return screenWidth / (screenWidth / width);
  }
}
