import 'package:file_up/src/features/presentation/pages/sign_up_page/local_widget/email_authentication_panel.dart';
import 'package:file_up/src/features/presentation/pages/sign_up_page/local_widget/id_input_page_panel.dart';
import 'package:file_up/src/features/presentation/pages/sign_up_page/local_widget/next_button.dart';
import 'package:file_up/src/features/presentation/pages/sign_up_page/local_widget/password_panel.dart';
import 'package:file_up/src/features/presentation/pages/sign_up_page/local_widget/user_info_input_panel.dart';
import 'package:flutter/material.dart';

import '../../../../config/values/app_strings.dart';
import '../../widgets/circle_text_field.dart';
import '../../widgets/default_button.dart';
import '../../widgets/sign_background_frame.dart';
import '../../widgets/space_with_height.dart';
import '../sign_in_page/local_widgets/ask_sign_up.dart';
import '../sign_in_page/local_widgets/social_sign_in_divider.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignBackGroundFrame(
      child: PageView(
        children: const [
          IDInputPagePanel(),
          PasswordPanel(),
        ],
      ),
    );
  }
}
