import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/language_controller.dart';

class GetXInternationalization extends StatelessWidget {

  LanguageController languageController = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Get X Internationalization"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('hello'.tr,style: const TextStyle(fontSize: 25,color: Colors.blue),),
            const SizedBox(height: 16,),
            ElevatedButton(onPressed: (){languageController.changeLanguage('hi', 'IN');}, child: const Text("Hindi")),
            const SizedBox(height: 16,),
            ElevatedButton(onPressed: (){languageController.changeLanguage('fr', 'FR');}, child: const Text("French")),
            const SizedBox(height: 16,),
            ElevatedButton(onPressed: (){languageController.changeLanguage('en', 'US');}, child: const Text("English")),
            const SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
