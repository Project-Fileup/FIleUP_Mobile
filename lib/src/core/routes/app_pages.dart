import 'package:file_up_mobile/src/core/routes/app_routes.dart';
import 'package:file_up_mobile/src/feature/presentation/view/pages/auth_page/auth_page.dart';
import 'package:go_router/go_router.dart';

abstract class AppPages {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.signIn,
        builder: (context, state) => const AuthPage(type: AuthType.signIn),
      ),
      GoRoute(
        path: AppRoutes.signUp,
        builder: (context, state) => const AuthPage(type: AuthType.signUp),
      ),
    ],
    initialLocation: AppRoutes.signIn,
  );
}
