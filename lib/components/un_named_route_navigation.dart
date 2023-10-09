import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/extra/demo.dart';

class RouteNavigationComponentForUnNamedRoutes extends StatelessWidget {
  const RouteNavigationComponentForUnNamedRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Route Navigation"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("This is Home"),
            ElevatedButton(onPressed: (){Get.to(const Demo());}, child: const Text("Next Screen")),
            ElevatedButton(onPressed: (){Get.to(const Demo());}, child: const Text("Back to Main")),
            // Text(Get.arguments)
          ],
        ),
      ),
    );
  }
}
