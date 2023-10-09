import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/binding/all_controller_binding.dart';
import 'package:get_x/components/get_x_service.dart';
import 'package:get_x/pages/home.dart';
import 'package:get_x/messages/messages.dart';

// void main() {
//   runApp(const MyApp());
// }

// if service initializing

Future<void> main() async{
  await initService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // if we have to use binding
        initialBinding: AllControllerBinding(),
      // if locale is used
      translations: Messages(),
      locale: const Locale('en','US'),
      fallbackLocale: const Locale('en','US'),
      title: 'Get X',
      home: const Home()
    );
  }
}