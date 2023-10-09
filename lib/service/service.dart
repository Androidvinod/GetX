import 'package:get_x/components/get_x_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

// This class is like GetXController.
// It just notifies GetX dependency injection system,
// that this subclass can not be removed from memory.

class Service extends GetXService {
  Future<void> incrementCounter() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int counter = (preferences.getInt('counter') ?? 0) + 1;
    print('pressed $counter times');
    await preferences.setInt('counter', counter);
  }
}