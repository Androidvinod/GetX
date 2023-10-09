import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/count_controller.dart';

class GetXControllerWithControllerType extends StatelessWidget {

  //if init property is not used in GetX<Type of Controller> then create instance of controller as follows/
  CountController countController = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Get X Controller Type"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetX<CountController>(
                // init: CountController(),
                builder: (controller){
                  return Text(
                    // "The value is ${controller.count}",
                    "The value is ${countController.count}",
                    style: const TextStyle(fontSize: 25),
                  );
                }
            ),
            ElevatedButton(onPressed: (){
              // Get.find<CountController>().increment();
              countController.increment();
            }, child: const Text("Increment"))
          ],
        ),
      ),
    );
  }
}
