import 'package:file_up/src/features/presentation/page/local_widgets/ask_sign_up.dart';
import 'package:file_up/src/features/presentation/widgets/default_button.dart';
import 'package:file_up/src/features/presentation/widgets/sign_background_frame.dart';
import 'package:file_up/src/features/presentation/widgets/space_with_height.dart';
import 'package:flutter/material.dart';

import '../../../config/values/app_strings.dart';
import '../widgets/circle_text_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignBackGroundFrame(
      child: Container(
        child: Column(
          children: const [
            CircleTextField(
              hintText: AppStrings.emailTextField,
            ),
            SpaceWithHeight(height: 20),
            CircleTextField(
              hintText: AppStrings.passwordTextField,
            ),
            SpaceWithHeight(height: 20),
            SizedBox(
              child: DefaultButton(title: '로그인'),
            ),
            SpaceWithHeight(height: 20),
            AskSignUp(),
          ],
        ),
        margin: const EdgeInsets.only(right: 45, left: 45),
      ),
    );
  }
}
