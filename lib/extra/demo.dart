import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/components/un_named_route_navigation.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Demo"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Get.to(
                      const RouteNavigationComponentForUnNamedRoutes(),
                      // fullscreenDialog: true,
                    transition: Transition.zoom,
                    // duration: const Duration(milliseconds: 3000),
                    curve: Curves.bounceInOut
                  );
                  // Go To Home screen but no option to return to previous screen
                  // Get.off(RouteNavigationComponentForUnNamedRoutes());
                  // Go To Home screen and cancel all previous screens/routes
                  // Get.offAll(RouteNavigationComponentForUnNamedRoutes());
                  //Go to next screen with some data
                  //Get.to(Home(),arguments:"Data from main");
                  //Go to next screen and receive data sent from the page
                  //var data = await Get.to(Home());
                  // print("The received data $data");
                  },
                child: const Text("Go to Home")),
            // ElevatedButton(onPressed: (){Get.back();}, child: const Text("Go to Home")),
          ],
        ),
      ),
    );
  }
}
