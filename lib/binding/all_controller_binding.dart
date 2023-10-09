import 'package:get/get.dart';
import 'package:get_x/controller/count_controller.dart';
import 'package:get_x/controller/my_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<MyController>(() => MyController());
    Get.lazyPut<CountController>(() => CountController());
  }
}