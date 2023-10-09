import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarComponent extends StatelessWidget {
  const SnackBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("snackBar"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Get.snackbar(
                "Snackbar Title",
                "Snackbar Message",
                //position
                snackPosition: SnackPosition.BOTTOM,

                //text formatting
                // titleText: const Text("Main Title"),
                // messageText: const Text("Another Message",style: TextStyle(color: Colors.white),),

                //Change color
                colorText: Colors.red,
                backgroundColor: Colors.black,

                //radius
                borderRadius: 30,

                //margin
                margin: const EdgeInsets.all(10),

                //maxWidth
                // maxWidth: 100,

                //animationDuration
                animationDuration: const Duration(milliseconds: 3000),

                //gradient
                // backgroundGradient: const LinearGradient(colors: [Colors.red,Colors.green]),

                //border
                borderColor: Colors.red,
                borderWidth: 5,

                //shadow
                // boxShadows: [const BoxShadow(
                //   color: Colors.yellow,
                //   offset: Offset(30,50),
                //   spreadRadius: 2,
                //   blurRadius: 8
                // )],

                //dismiss
                isDismissible: true,
                dismissDirection: DismissDirection.horizontal,

                //animation
                // forwardAnimationCurve: Curves.bounceInOut,

                //duration of snackbar
                // duration: const Duration(milliseconds: 8000),

                //icon
                icon: const Icon(Icons.send,color: Colors.white,),
                shouldIconPulse: false,

                //leftBarIndicator
                // leftBarIndicatorColor: Colors.white,

                //for show a button in snackbar
                mainButton: TextButton(
                  child: const Text('Retry'),
                  onPressed: () {
                    print("Retry Clicked");
                  },
                ),

                //got tap on snackbar
                onTap : (val){
                  print("Snackbar Clicked");
                },

                //overlay
                // overlayBlur: 5,
                // overlayColor: Colors.green,

                //padding
                // padding: const EdgeInsets.all(50),

                //progress indicator
                // showProgressIndicator: true,
                // progressIndicatorBackgroundColor: Colors.yellow,
                // progressIndicatorValueColor: const AlwaysStoppedAnimation<Color>(Colors.white),

                //reverse animation
                reverseAnimationCurve: Curves.bounceInOut,

                //for check snackbar status
                // snackbarStatus: (val){
                //     print(val);
                // },

                //user input form
                // userInputForm: const Form(
                //     child: Row(
                //   children: [
                //     Expanded(child: TextField())
                //   ],
                // ))
              );
            }, child: const Text("show Snackbar"))
          ],
        ),
      ),
    );
  }
}

