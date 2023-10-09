import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/components/bottom_sheet.dart';
import 'package:get_x/components/get_x_controller.dart';
import 'package:get_x/components/get_x_controller_with_controller_type.dart';
import 'package:get_x/components/get_x_controller_with_get_builder.dart';
import 'package:get_x/components/get_x_controller_with_get_builder_life_cycle.dart';
import 'package:get_x/components/get_x_dependency_injection.dart';
import 'package:get_x/components/get_x_internationalization.dart';
import 'package:get_x/components/get_x_service.dart';
import 'package:get_x/components/get_x_workers.dart';
import 'package:get_x/components/reactive_state_management_obx.dart';
import 'package:get_x/components/reactive_state_management_obx_and_custom_class.dart';
import 'package:get_x/components/show_dialog.dart';
import 'package:get_x/components/snack_bar.dart';
import 'package:get_x/components/un_named_route_navigation.dart';
import 'package:get_x/pages/home_two.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Get X"),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          child: const Icon(
            Icons.navigate_next,
            color: Colors.green,
          ),
          onPressed: () {
            Get.to(() => const HomeTwo());
          },
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const SnackBarComponent()),);
                      Get.to(() => const SnackBarComponent());
                    },
                    child: const Text("SnackBar")),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const ShowDialogComponent()),);
                      Get.to(() => const ShowDialogComponent());
                    },
                    child: const Text("Show Dialog")),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomSheetComponent()),);
                      Get.to(() => const BottomSheetComponent());
                    },
                    child: const Text("Bottom Sheet")),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const RouteNavigationComponentForUnNamedRoutes()),);
                      Get.to(
                          () => const RouteNavigationComponentForUnNamedRoutes());
                    },
                    child: const Text("Un Named Route Navigation")),
                ElevatedButton(
                    onPressed: () async {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const RouteNavigationComponentForNamedRoutes()),);
                      if (await canLaunchUrl(Uri.parse(
                          'https://www.youtube.com/watch?v=ykGNGm7zf2Y&list=PLCaS22Sjc8YR32XmudgmVqs49t-eKKr9t&index=6'))) {
                        await launchUrl(Uri.parse(
                            'https://www.youtube.com/watch?v=ykGNGm7zf2Y&list=PLCaS22Sjc8YR32XmudgmVqs49t-eKKr9t&index=6'));
                      } else {
                        throw 'Could not launch';
                      }
                    },
                    child: const Text("Named Route Navigation")),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ReactiveStateManagementByObx()),);
                      Get.to(() => ReactiveStateManagementByObx());
                    },
                    child:
                        const Text("Reactive State Management (by Using Obx)")),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => StateManagementByObxAndCustomClass()),);
                        Get.to(() => StateManagementByObxAndCustomClass());
                      },
                      child: const Text(
                        "Reactive State Management (by Using Obx and Custom Class)",
                        textAlign: TextAlign.center,
                      )),
                ),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => GetXController()),);
                      Get.to(() => GetXController());
                    },
                    child: const Text("Get X Controller")),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => GetXControllerWithControllerType()),);
                      Get.to(() => GetXControllerWithControllerType());
                    },
                    child: const Text("Get X Controller With Controller Type")),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => GetXControllerWithGetBuilder()),);
                      Get.to(() => GetXControllerWithGetBuilder());
                    },
                    child: const Text("Get X Controller With GetBuilder")),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => GetXControllerWithGetBuilderLifeCycle()),);
                      Get.to(() => GetXControllerWithGetBuilderLifeCycle());
                    },
                    child: const Text(
                        "Get X Controller With GetBuilder Life Cycle")),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => GetXWorkers()),);
                      Get.to(() => GetXWorkers());
                    },
                    child: const Text("Get X Workers")),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => GetXInternationalization()),);
                      Get.to(() => GetXInternationalization());
                    },
                    child: const Text("Get X Internationalization")),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => GetXDependencyInjection()),);
                      Get.to(() => GetXDependencyInjection());
                    },
                    child: const Text("Get X Dependency Injection")),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => GetXService()),);
                      Get.to(() => GetXService());
                    },
                    child: const Text("Get X Service")),
                ElevatedButton(
                    onPressed: () async {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const RouteNavigationComponentForNamedRoutes()),);
                      if (await canLaunchUrl(Uri.parse(
                          'https://www.youtube.com/watch?v=5ARwxw6-GwQ&list=PLCaS22Sjc8YR32XmudgmVqs49t-eKKr9t&index=18'))) {
                        await launchUrl(Uri.parse(
                            'https://www.youtube.com/watch?v=5ARwxw6-GwQ&list=PLCaS22Sjc8YR32XmudgmVqs49t-eKKr9t&index=18'));
                      } else {
                        throw 'Could not launch';
                      }
                    },
                    child: const Text("Get X Binding")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
