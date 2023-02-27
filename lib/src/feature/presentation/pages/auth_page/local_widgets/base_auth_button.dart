import 'package:file_up_mobile/src/core/values/app_colors.dart';
import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum PlatformType {
  google('구글', 'google_icon'),
  apple('애플', 'apple_icon'),
  kakao('카카오', 'kakao_icon'),
  naver('네이버', 'naver_icon');

  final String name;
  final String path;

  const PlatformType(this.name, this.path);
}

class BaseAuthButton extends StatelessWidget {
  final PlatformType platformType;
  final AuthType type;

  const BaseAuthButton.google({
    Key? key,
    required this.type,
    this.platformType = PlatformType.google,
  }) : super(key: key);

  const BaseAuthButton.apple({
    Key? key,
    required this.type,
    this.platformType = PlatformType.apple,
  }) : super(key: key);

  const BaseAuthButton.kakao({
    Key? key,
    required this.type,
    this.platformType = PlatformType.kakao,
  }) : super(key: key);

  const BaseAuthButton.naver({
    Key? key,
    required this.type,
    this.platformType = PlatformType.naver,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String buttonText = _getButtonText();
    List<Color> colors = _initColors();
    Color backgroundColor = colors[0];
    Color textColor = colors[1];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        ),
        onPressed: () {},
        child: Row(
          children: [
            SvgPicture.asset('assets/images/${platformType.path}.svg'),
            Expanded(
              child: Center(
                child: Text(
                  buttonText,
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Color> _initColors() {
    Color backgroundColor = AppColors.black;
    Color textColor = AppColors.black;

    switch (platformType) {
      case PlatformType.google:
        backgroundColor = AppColors.white;
        textColor = AppColors.black;
        break;
      case PlatformType.apple:
        backgroundColor = AppColors.black;
        textColor = AppColors.white;
        break;
      case PlatformType.kakao:
        backgroundColor = AppColors.kakaoColor;
        textColor = AppColors.black;
        break;
      case PlatformType.naver:
        backgroundColor = AppColors.naverColor;
        textColor = AppColors.white;
        break;
    }

    return [backgroundColor, textColor];
  }

  String _getButtonText() {
    switch (type) {
      case AuthType.signIn:
        return '${platformType.name} 로그인';
      case AuthType.signUp:
        return '${platformType.name}로 시작하기';
    }
  }
}
