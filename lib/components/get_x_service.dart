import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/service/service.dart';

Future<void> initService() async {
  print('starting services...');
  await Get.putAsync<Service>(()async => Service());
  print('All services started...');
}

class GetXService extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Get X Service"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){

              Get.find<Service>().incrementCounter();

            }, child: const Text("Increment")),
          ],
        ),
      ),
    );
  }
}
