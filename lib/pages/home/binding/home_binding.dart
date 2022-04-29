import 'package:get/get.dart';
import 'package:learning_getx/pages/home/controller/home_controller.dart';
import 'package:learning_getx/services/api_service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(ApiService());
  }
}
