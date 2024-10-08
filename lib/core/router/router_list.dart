part of 'router.dart';

List<RouteBase> routerList = [
  GoRoute(
    path: RouterPaths.login,
    name: RouterNames.login,
    builder: (context, state) => const LoginScreen(),
  ),
];
