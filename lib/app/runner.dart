import 'package:flutter/material.dart';
import 'package:task_manager/app/application.dart';
import 'package:task_manager/core/di/di_init.dart';
import 'package:task_manager/core/di/manual_setup.dart';

class Runner {
  Future<void> initializeAndRun() async {
    WidgetsFlutterBinding.ensureInitialized();
    await manualSetup();
    configureDependencies();
    //TODO: talker logger
    const MainApp().run();
  }
}
