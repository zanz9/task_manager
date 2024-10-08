import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager/core/router/router.dart';
import 'package:task_manager/core/theme/colors.dart';
import 'package:task_manager/core/theme/text_theme.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  void run() => runApp(this);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late final GoRouter router;

  @override
  void initState() {
    router = routerProvider();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        textTheme: textTheme,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
        ),
        scaffoldBackgroundColor: AppColors.white,
      ),
    );
  }
}
