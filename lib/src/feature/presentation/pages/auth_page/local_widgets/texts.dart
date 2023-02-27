import 'package:file_up_mobile/src/core/routes/app_routes.dart';
import 'package:file_up_mobile/src/core/values/app_colors.dart';
import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GuideText extends StatelessWidget {
  final AuthType type;

  const GuideText({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text = _getGuideText();

    return Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }

  String _getGuideText() {
    switch (type) {
      case AuthType.signIn:
        return 'File UP을 이용하시려면 로그인이 필요합니다.\n로그인을 진행해주세요.';
      case AuthType.signUp:
        return 'File UP에 오신 것을 환영합니다.\n회원가입을 진행해주세요.';
    }
  }
}

class HelpText extends StatelessWidget {
  final AuthType type;

  const HelpText({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> helpTexts = _getHelpText();
    String helpText = helpTexts[0], authText = helpTexts[1];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(helpText),
        TextButton(
          onPressed: () => _onClickEvent(type, context),
          child: Text(
            authText,
            style: const TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  void _onClickEvent(AuthType authType, BuildContext context) {
    switch(authType) {
      case AuthType.signIn:
        context.go(AppRoutes.signUp);
        break;
      case AuthType.signUp:
        context.go(AppRoutes.signIn);
        break;
    }
  }

  List<String> _getHelpText() {
    String helpText, authText;

    switch (type) {
      case AuthType.signIn:
        helpText = 'FileUp이 처음이신가요?';
        authText = '회원가입';
        break;
      case AuthType.signUp:
        helpText = '이미 계정이 있으신가요?';
        authText = '로그인';
        break;
    }

    return [helpText, authText];
  }
}
