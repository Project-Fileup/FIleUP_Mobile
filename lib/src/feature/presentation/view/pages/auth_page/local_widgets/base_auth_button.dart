import 'package:file_up_mobile/src/core/values/app_colors.dart';
import 'package:file_up_mobile/src/feature/presentation/model/platform_type.dart';
import 'package:file_up_mobile/src/feature/presentation/view/pages/auth_page/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';

// Todo: Remvoe this model
enum TempPlatformType {
  google('구글', 'google_icon'),
  apple('애플', 'apple_icon'),
  kakao('카카오', 'kakao_icon'),
  naver('네이버', 'naver_icon');

  final String name;
  final String path;

  const TempPlatformType(this.name, this.path);
}

class GoogleAuthButton extends StatefulWidget {
  final AuthType type;

  const GoogleAuthButton({Key? key, required this.type}) : super(key: key);

  @override
  State<GoogleAuthButton> createState() => _GoogleAuthButtonState();
}

class _GoogleAuthButtonState extends State<GoogleAuthButton> {
  @override
  Widget build(BuildContext context) {
    return _BaseAuthButton(
      platformType: GoogleOAuth(),
      type: widget.type,
      pressed: () => _onClickEvent(),
    );
  }

  Future<void> _onClickEvent() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    print('[LOG] test : $googleUser');
  }
}

class _BaseAuthButton extends StatelessWidget {
  final PlatformType platformType;
  final AuthType type;
  final VoidCallback pressed;

  const _BaseAuthButton({
    super.key,
    required this.platformType,
    required this.type,
    required this.pressed,
  });

  @override
  Widget build(BuildContext context) {
    String buttonText = _getButtonText(type);
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
        onPressed: pressed,
        child: Row(
          children: [
            SvgPicture.asset('assets/images/${platformType.iconPath}.svg'),
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

    if (platformType is GoogleOAuth) {
      backgroundColor = AppColors.white;
      textColor = AppColors.black;
    }

    return [backgroundColor, textColor];
  }

  String _getButtonText(AuthType type) {
    switch (type) {
      case AuthType.signIn:
        return '${platformType.name} 로그인';
      case AuthType.signUp:
        return '${platformType.name}로 시작하기';
    }
  }
}

//Todo: Remove this widget
class BaseAuthButton extends StatelessWidget {
  final TempPlatformType platformType;
  final AuthType type;

  const BaseAuthButton.google({
    super.key,
    required this.type,
    this.platformType = TempPlatformType.google,
  });

  const BaseAuthButton.apple({
    Key? key,
    required this.type,
    this.platformType = TempPlatformType.apple,
  }) : super(key: key);

  const BaseAuthButton.kakao({
    Key? key,
    required this.type,
    this.platformType = TempPlatformType.kakao,
  }) : super(key: key);

  const BaseAuthButton.naver({
    Key? key,
    required this.type,
    this.platformType = TempPlatformType.naver,
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
      case TempPlatformType.google:
        backgroundColor = AppColors.white;
        textColor = AppColors.black;
        break;
      case TempPlatformType.apple:
        backgroundColor = AppColors.black;
        textColor = AppColors.white;
        break;
      case TempPlatformType.kakao:
        backgroundColor = AppColors.kakaoColor;
        textColor = AppColors.black;
        break;
      case TempPlatformType.naver:
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
