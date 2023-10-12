import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetStorageAndEmailValidation extends StatelessWidget {
  var emailEditingController = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Storage and Email Validation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: emailEditingController,
              ),
            ),
            const SizedBox(height: 8),
            Padding(padding: const EdgeInsets.all(16),
              child: ElevatedButton(onPressed: (){
                if(GetUtils.isEmail(emailEditingController.text)){
                  storage.write("email", emailEditingController.text);
                }else{
                  Get.snackbar("Incorrect Email", "Provide Email in Valid Format",snackPosition: SnackPosition.BOTTOM);
                }
              }, child: const Text("Write")),
            ),
            const SizedBox(height: 8),
            ElevatedButton(onPressed:(){
              print("The email is ${storage.read("email")}");
            },child: const Text("Read")),
          ],
        ),
      ),
    );
  }
}


/* It is used for persistent key/value storage

 To listen for changes
 var listen= storage.listen(() {print("Email Changed") ;});
 when subscribed to listen event it should be disposed by using
 storage.removeListen (listen) ;
 To listen for changes in key
 storage.listenKey('email', (value) {
  print ('new key is $value');

//Remove a key
 storage. remove ('email) ;

//erase the container
 storage.erase();

//create container
  GetStorage g = GetStorage('MyStorage');
  await GetStorage.init('MyStorage');
 */
