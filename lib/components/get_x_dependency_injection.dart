import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/my_controller.dart';

class GetXDependencyInjection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // My Controller instance will be created even if it is not used
    // tag will be used to find the instance with tag name
    // Controller disposed when it is not used but if permanent is true the instance will be alive through the app

    MyController myController =
    Get.put(MyController());
    // MyController myController = Get.put(MyController(),permanent: true);
    // MyController myController = Get.put(MyController(),tag:'instance1',permanent: true);

    // Instance will be created when it used
    // It is similar to "permanent" , the difference is that the instance is declared when is not being used, but when it's use is needed
    //again , Get will recreate the instance
    // Get.lazyPut(() => MyController());
    // Get.lazyPut(() => MyController(),tag:'instance2',fenix:true);

    return Scaffold(
      appBar: AppBar(title: const Text("Get X Dependency Injection"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              // Instance will be created with tag
              // Get.find<MyController>(tag:'instance1');

              // Find Instance
              Get.find<MyController>();

              Get.find<MyController>().incrementCounter();

            }, child: const Text("Click Me")),
          ],
        ),
      ),
    );
  }
}
