import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/count_controller.dart';

class GetXControllerWithGetBuilderLifeCycle extends StatelessWidget {

  CounterControllerForLifeCycle counterControllerForLifeCycle = Get.put(CounterControllerForLifeCycle());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Get X Controller with Get Builder Life Cycle"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<CounterControllerForLifeCycle>(
                initState: (data) => counterControllerForLifeCycle.increment(),
                dispose: (_) => counterControllerForLifeCycle.cleanUpTask(),
              // id: 'txtCount',
                builder: (controller){
                  return Text(
                    // "The value is ${controller.count}",
                    "The value is ${controller.count}",
                    style: const TextStyle(fontSize: 25),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
