import 'package:flutter/material.dart';

import 'base_auth_button.dart';

class AuthButtonPanel extends StatelessWidget {
  const AuthButtonPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        BaseAuthButton.google(),
        BaseAuthButton.apple(),
        BaseAuthButton.kakao(),
        BaseAuthButton.naver(),
      ],
    );
  }
}
