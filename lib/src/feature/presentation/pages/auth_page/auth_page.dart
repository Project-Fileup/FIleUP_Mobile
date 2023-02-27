import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/local_widgets/auth_panel.dart';
import 'package:flutter/material.dart';

import 'local_widgets/background_panel.dart';
import 'local_widgets/logo_panel.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPanel(),
          Column(
            children: const [
              LogoPanel(),
              AuthPanel(),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
