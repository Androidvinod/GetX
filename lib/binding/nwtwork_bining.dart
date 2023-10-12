import 'package:get/get.dart';
import 'package:get_x/controller/network_contoller.dart';

class NetworkBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<NetworkController>(() => NetworkController());
  }
}