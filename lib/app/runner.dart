import 'package:flutter/material.dart';
import 'package:task_manager/app/application.dart';

class Runner {
  Future<void> initializeAndRun() async {
    // await configureDependencies(); //TODO: getIt
    //TODO: talker logger
    WidgetsFlutterBinding.ensureInitialized();
    const MainApp().run();
  }
}
