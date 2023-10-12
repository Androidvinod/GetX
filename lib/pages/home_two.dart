import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/apiCallingWithGetX/productModule/views/product_view.dart';
import 'package:get_x/components/get_storage_and_email_validation.dart';
import 'package:get_x/components/get_view_and_get_widget.dart';
import 'package:get_x/components/network_checker.dart';
import 'package:get_x/controller/network_contoller.dart';
class HomeTwo extends StatelessWidget {
  const HomeTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Get X"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      Get.to(()=>ProductView());
                    },
                    child: const Text("Api calling with HTTP")
                ),
                ElevatedButton(
                    onPressed: (){
                      Get.to(()=>GetStorageAndEmailValidation());
                    },
                    child: const Text("Get Storage and Email Validation")
                ),
                ElevatedButton(
                    onPressed: (){
                      Get.to(()=>GetViewAndGetWidget());
                    },
                    child: const Text("Get View and Get Widget")
                ),
                ElevatedButton(
                    onPressed: (){
                      final NetworkController networkController = Get.find<NetworkController>();
                      Get.to(()=>NetworkChecker(networkController:networkController));
                    },
                    child: const Text("Network Checker")
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
