import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDialogComponent extends StatelessWidget {
  const ShowDialogComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("showDialog"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              //default dialog
              // Get.defaultDialog();

              //customize default dialog
              Get.defaultDialog(
                title: "Dialog Title",
                titleStyle: const TextStyle(fontSize: 25),
                middleText: "Middle Text",
                middleTextStyle: const TextStyle(fontSize: 20),
                backgroundColor: Colors.purple,
                // radius: 100,
                //To customise the middle text
                content: const Row(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(width: 16,),
                    Expanded(child: Text("Data Loading....")),
                  ],
                ),
                textCancel: "Cancel",
                cancelTextColor: Colors.white,
                textConfirm: "Confirm",
                confirmTextColor: Colors.white,
                onCancel: (){},
                onConfirm: (){},
                buttonColor: Colors.green,

                  //override default cancel and confirm
                cancel: const Text(
                  "Cancles",
                  style: TextStyle(color: Colors.white),
                ),
                confirm: const Text(
                  "Confirms",
                  style: TextStyle(color: Colors.white),
                ),

                actions: [
                  ElevatedButton(onPressed: (){}, child: const Text("Action 1")),
                  ElevatedButton(onPressed: (){}, child: const Text("Action 2"))
                ],
                  //dod not close popup outside click
                // barrierDismissible: false
              );
            }, child: const Text("show Dialog"))
          ],
        ),
      ),
    );
  }
}

