import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager/core/di/di_init.dart';

Future<void> manualSetup() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);
}
