import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/auth_page.dart';
import 'package:flutter/material.dart';

import 'base_auth_button.dart';

class AuthButtonPanel extends StatelessWidget {
  final AuthType type;

  const AuthButtonPanel({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GoogleAuthButton(type: type),
        BaseAuthButton.apple(type: type),
        BaseAuthButton.kakao(type: type),
        BaseAuthButton.naver(type: type),
      ],
    );
  }
}
