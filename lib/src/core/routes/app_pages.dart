import 'package:file_up_mobile/src/core/routes/app_routes.dart';
import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/auth_page.dart';
import 'package:go_router/go_router.dart';

abstract class AppPages {
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: AppRoutes.baseUrl,
      builder: (context, state) => const AuthPage(),
    ),
  ]);
}
