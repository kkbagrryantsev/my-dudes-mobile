import 'package:get/get.dart';

class Controller extends GetxController {
  RxDouble bottomSheetSize = 0.12.obs;

  void updateSize(double newSize) {
    bottomSheetSize.value = newSize;
  }
}