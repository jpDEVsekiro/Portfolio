import 'package:get/get.dart';
import 'package:portfolio/src/application/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
