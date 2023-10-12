import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/count_controller.dart';
// class GetViewAndGetWidget extends StatelessWidget {

// class GetViewAndGetWidget extends GetView<CountController>{
class GetViewAndGetWidget extends GetWidget<CountController>{

  /*
GetView :
If we have single controller as a dependency then we can use GetView
instead of Statelesswidget and avoid writing Get.find

GetWidget :
It is similar to GetView with one difference it gives the same instance of
Get.find everytime. It becomes very useful when used in combination with
Get.create

  */

  @override
  Widget build(BuildContext context) {
    //For GetView
    // Get.put(CountController());
    //Gor GetWidget
    Get.create(() => CountController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("GetView and GetWidget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text('The value is ${controller.count}')),
            const SizedBox(height: 8),
            ElevatedButton(onPressed: (){
              print(("393939==>>${controller.hashCode}"));
              print(controller.hashCode);
              controller.increment();
            }, child: const Text('Increment'))
          ],
        ),
      ),
    );
  }
}
