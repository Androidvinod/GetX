import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/count_controller.dart';

class GetXWorkers extends StatelessWidget {

  CounterControllerWorker counterControllerWorker = Get.put(CounterControllerWorker());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get X Controller"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => counterControllerWorker.increment(),
                child: const Text("Upper")),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                onChanged: (val) {
                  counterControllerWorker.increment();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
