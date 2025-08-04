import 'package:get/get.dart';

class Reivewcontroller extends GetxController {
  double slidevalue = 3.0;
  void sliderfunction(value) {
    slidevalue = value;
    update();
  }
}
