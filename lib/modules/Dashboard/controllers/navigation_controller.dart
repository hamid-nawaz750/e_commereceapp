import 'package:get/get.dart';

class NavigationController extends GetxController {
  int selectedIndex = 0;

  void changeTab(int index) {
    selectedIndex = index;
    update();
  }
}
