import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveStateManagementByObx extends StatelessWidget {

  var count = 0.obs;

  void increment(){
    count ++;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Reactive State Management with Obx"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                "Counter value is $count",
              style: const TextStyle(fontSize: 25),
            )),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(onPressed: increment, child: const Text("Increment"))
          ],
        ),
      ),
    );
  }
}
