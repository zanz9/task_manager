import 'package:go_router/go_router.dart';
import 'package:task_manager/features/auth/presentation/screen/login_screen.dart';
import 'package:task_manager/features/task/presentation/screen/task_screen.dart';

part 'router_list.dart';
part 'router_names.dart';
part 'router_paths.dart';

GoRouter routerProvider() {
  final goRouter = GoRouter(
    initialLocation: RouterPaths.login,
    debugLogDiagnostics: true,
    routes: routerList,
  );

  return goRouter;
}
