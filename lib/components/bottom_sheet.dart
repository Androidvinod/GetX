import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetComponent extends StatelessWidget {
  const BottomSheetComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Sheet"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Get.bottomSheet(
                Wrap(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.wb_sunny_outlined),
                      title: const Text("Light Theme"),
                      onTap: (){Get.changeTheme(ThemeData.light());},
                    ),
                    ListTile(
                      leading: const Icon(Icons.sunny),
                      title: const Text("Dark Theme"),
                      onTap: (){Get.changeTheme(ThemeData.dark());},
                    )
                  ],
                ),
                barrierColor: Colors.transparent,
                backgroundColor: Colors.yellow,
                //
                // isDismissible: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2
                  )
                ),
                //drag
                enableDrag: false
              );
            }, child: const Text("Bottom Sheet"))
          ],
        ),
      ),
    );
  }
}
