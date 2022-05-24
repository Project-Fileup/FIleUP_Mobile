import 'package:file_up/src/config/routes/app_routes.dart';
import 'package:flutter/material.dart';

class AskSignUp extends StatelessWidget {
  const AskSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('file up이 처음이신가요?'),
        TextButton(
          onPressed: () => Navigator.pushNamed(
            context,
            AppRoutes.signUp,
          ),
          child: Text('회원가입'),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
