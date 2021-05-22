import 'package:fl_territorios_do_brasil/Pages/home_page/home_page.controller.dart';
import 'package:get/get.dart';

class HomePageBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(HomePageController());
  }
}
