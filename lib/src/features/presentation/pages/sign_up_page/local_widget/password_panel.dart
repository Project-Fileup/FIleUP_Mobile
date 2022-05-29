import 'package:file_up/src/features/presentation/pages/sign_up_page/local_widget/email_authentication_panel.dart';
import 'package:file_up/src/features/presentation/pages/sign_up_page/local_widget/next_button.dart';
import 'package:file_up/src/features/presentation/pages/sign_up_page/local_widget/user_info_input_panel.dart';
import 'package:file_up/src/features/presentation/widgets/default_button.dart';
import 'package:flutter/material.dart';

import '../../../widgets/circle_text_field.dart';
import '../../../widgets/sign_background_frame.dart';
import '../../../widgets/space_with_height.dart';

class PasswordPanel extends StatelessWidget {
  const PasswordPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          CircleTextField(
            hintText: 'password',
          ),
          SpaceWithHeight(height: 20),
          CircleTextField(
            hintText: 'Confirm Password',
          ),
          SpaceWithHeight(height: 55),
          DefaultButton(title: '회원가입'),
          SpaceWithHeight(height: 50),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      margin: const EdgeInsets.only(
        left: 45,
        right: 45,
      ),
    );
  }
}
