import 'package:get/get.dart';
import 'package:get_x/class/student.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyController extends GetxController {

  // if entire class is not observable
  // var student = Student();
  //
  // void convertToUpperCase(){
  //   student.name.value = student.name.value.toUpperCase();
  // }

  //if entire class is observable

  var student = Student(name: "Tom", age: 25).obs;

  void convertToUpperCase(){
    student.update((student){
      student?.name = student.name.toString().toUpperCase();
    });
  }

  void incrementCounter() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int counter = (preferences.getInt('counter') ?? 0) + 1;
    print('pressed $counter times');
    await preferences.setInt('counter', counter);
  }

}