import 'package:flutter/material.dart';

import 'auth_button_panel.dart';
import 'texts.dart';

class AuthPanel extends StatelessWidget {
  const AuthPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: const [
          GuideText(),
          AuthButtonPanel(),
          HelpText(),
        ],
      ),
    );
  }
}
