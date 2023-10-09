import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/count_controller.dart';

class GetXControllerWithGetBuilder extends StatelessWidget {

  CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Get X Controller with Get Builder"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
              // init: CounterController(),
                builder: (controller){
                  return Text(
                    // "The value is ${controller.count}",
                    "The value is ${controller.count}",
                    style: const TextStyle(fontSize: 25),
                  );
                }
            ),
            ElevatedButton(onPressed: (){
              // Get.find<CounterController>().increment();
              counterController.increment();
            }, child: const Text("Increment"))
          ],
        ),
      ),
    );
  }
}
