import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/class/student.dart';

class StateManagementByObxAndCustomClass extends StatelessWidget {

  // var student = Student();

  // For making the entire class observable
  final student = Student(name:"tom",age:25).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Reactive State Management with Obx and Custom Class"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
              // "Name is ${student.name.value}",
              "Name is ${student.value.name}",
              style: const TextStyle(fontSize: 25),
            )),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(onPressed: (){
              // If individuals variables are observable
              // student.name.value = student.name.value.toUpperCase();

              //If entire class is observable
              student.update((student) {
                student?.name = student.name.toString().toUpperCase();
              });
            }, child: const Text("Upper"))
          ],
        ),
      ),
    );
  }
}
