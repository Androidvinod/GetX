import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/pages/home.dart';
import 'package:get_x/main.dart';

class RouteNavigationComponentForNamedRoutes extends StatelessWidget {
  const RouteNavigationComponentForNamedRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page:()=> const MyApp()),
        GetPage(name: '/home', page:()=> const Home())
      ],
    );
  }
}
