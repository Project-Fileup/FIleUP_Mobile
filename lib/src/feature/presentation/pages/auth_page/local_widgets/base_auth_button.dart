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
  final PlatformType authType;

  const BaseAuthButton.google({
    Key? key,
    this.authType = PlatformType.google,
  }) : super(key: key);

  const BaseAuthButton.apple({
    Key? key,
    this.authType = PlatformType.apple,
  }) : super(key: key);

  const BaseAuthButton.kakao({
    Key? key,
    this.authType = PlatformType.kakao,
  }) : super(key: key);

  const BaseAuthButton.naver({
    Key? key,
    this.authType = PlatformType.naver,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            SvgPicture.asset('assets/images/${authType.path}.svg'),
            Expanded(
              child: Center(
                child: Text(
                  '${authType.name} 로그인',
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
    Color backgroundColor = Colors.black;
    Color textColor = Colors.black;

    switch (authType) {
      case PlatformType.google:
        backgroundColor = Colors.white;
        textColor = Colors.black;
        break;
      case PlatformType.apple:
        backgroundColor = Colors.black;
        textColor = Colors.white;
        break;
      case PlatformType.kakao:
        backgroundColor = const Color.fromRGBO(254, 229, 0, 1);
        textColor = Colors.black;
        break;
      case PlatformType.naver:
        backgroundColor = const Color.fromRGBO(3, 199, 90, 1);
        textColor = Colors.white;
        break;
    }

    return [backgroundColor, textColor];
  }
}
