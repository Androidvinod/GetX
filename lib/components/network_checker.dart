import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get_x/controller/network_contoller.dart';
class NetworkChecker extends StatelessWidget {

final NetworkController networkController = Get.find<NetworkController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Network Checker"),
      ),
      body: Center(
        child: Obx(() => Text(
            networkController.connectionType.value == 1 ? 'Wi-Fi Connected' :
            networkController.connectionType.value == 2 ? 'Mobile Data Connected' :
                'No Data Connection'
        )),
      ),
    );
  }
}
