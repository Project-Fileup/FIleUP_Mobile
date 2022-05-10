import 'package:file_up/src/features/presentation/widgets/sign_background_frame.dart';
import 'package:flutter/material.dart';

import '../../../config/values/app_strings.dart';
import '../widgets/circle_text_field.dart';

class SignInPage extends SignBackGroundFrame {
  const SignInPage({Key? key}) : super(key: key);

  @override
  body() {
    return Container(
      child: Column(
        children: const [
          CircleTextField(
            hintText: AppStrings.emailTextField,
          ),
        ],
      ),
      margin: const EdgeInsets.only(right: 45, left: 45),
    );
  }
}
