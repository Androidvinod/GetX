import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/apiCallingWithGetX/productModule/views/product_view.dart';
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
