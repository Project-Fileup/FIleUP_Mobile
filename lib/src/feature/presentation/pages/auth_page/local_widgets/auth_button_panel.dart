import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/local_widgets/base_auth_button.dart';
import 'package:flutter/material.dart';

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
