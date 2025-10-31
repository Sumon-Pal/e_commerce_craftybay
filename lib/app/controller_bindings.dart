import 'package:e_commerce_craftybay/features/shared/controllers/main_nav_holder_controller.dart';
import 'package:get/get.dart';

class ControllerBindings extends Bindings{
  @override
  void dependencies() {
   Get.put(MainNavHolderController());
  }
}