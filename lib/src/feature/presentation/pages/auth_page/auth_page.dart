import 'dart:ui';

import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/local_widgets/auth_button_panel.dart';
import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/local_widgets/background_panel.dart';
import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/local_widgets/base_auth_button.dart';
import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/local_widgets/guide_text.dart';
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
                  children: [
                    GuideText(),
                    AuthButtonPanel(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('FileUp이 처음이신가요?'),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            '회원가입',
                            style: TextStyle(
                              color: Color.fromRGBO(89, 130, 200, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
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
