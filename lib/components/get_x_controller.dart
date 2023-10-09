import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/my_controller.dart';

class GetXController extends StatelessWidget {

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Get X Controller"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(()=> Text("Name is ${
                // myController.student.name
                myController.student.value.name
            }",style: const TextStyle(fontSize: 25),)),
            const SizedBox(height: 16,),
            ElevatedButton(onPressed: () => myController.convertToUpperCase(), child: const Text("Upper"))
          ],
        ),
      ),
    );
  }
}
