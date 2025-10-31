import 'package:get/get.dart';

class MainNavHolderController extends GetxController {
  int _selectedIndex = 0;

  int get currentIndex => _selectedIndex;

  void changeIndex(int index) {
    if (_selectedIndex == index) {
      return;
    }
    _selectedIndex = index;
    update();
  }
  void moveToCategory() {
    changeIndex(1);
    update();
  }

  void backToHome() {
    changeIndex(0);
    update();
  }
}
