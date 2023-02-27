import 'dart:ui';

import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/local_widgets/auth_button_panel.dart';
import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/local_widgets/background_panel.dart';
import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/local_widgets/base_auth_button.dart';
import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/local_widgets/texts.dart';
import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/local_widgets/logo_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPanel(),
          Column(
            children: [
              const LogoPanel(),
              Expanded(
                child: Column(
                  children: const [
                    GuideText(),
                    AuthButtonPanel(),
                    HelpText(),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
