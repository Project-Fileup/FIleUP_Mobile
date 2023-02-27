import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/auth_page.dart';
import 'package:flutter/material.dart';

import 'auth_button_panel.dart';
import 'texts.dart';

class AuthPanel extends StatelessWidget {
  final AuthType type;

  const AuthPanel({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          GuideText(type: type),
          AuthButtonPanel(type: type),
          HelpText(type: type,),
        ],
      ),
    );
  }
}
