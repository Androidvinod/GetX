import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/image_controller.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class GetXImagePicker extends StatelessWidget {

  ImageController imageController = ImageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Picker View"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(() => imageController.selectedImagePath.value=='' ?
                Image.asset("assets/placeholder.png",height: 500,width: MediaQuery.of(context).size.width):
                Image.file(File(imageController.selectedImagePath.value,),height: 500,width: MediaQuery.of(context).size.width)
                ),
                const SizedBox(height: 10,),
                Obx(() => Text(imageController.selectedImageSize.value == '' ? '' : imageController.selectedImageSize.value.toString())),
                ElevatedButton(onPressed: (){imageController.getImage(ImageSource.camera);}, child: const Text("Camera")),
                ElevatedButton(onPressed: (){imageController.getImage(ImageSource.gallery);}, child: const Text("Gallery")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
