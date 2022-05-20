import 'package:file_up/src/config/routes/app_routes.dart';

import '../../features/presentation/pages/sign_in_page/sign_in_page.dart';

class AppPages {
  static const String initial = AppRoutes.signIn;

  static final routes = {
    AppRoutes.signIn: (context) => const SignInPage(),
  };
}
