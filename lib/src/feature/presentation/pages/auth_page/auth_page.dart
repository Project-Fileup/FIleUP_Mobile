import 'dart:ui';

import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/local_widgets/background_panel.dart';
import 'package:file_up_mobile/src/feature/presentation/pages/auth_page/local_widgets/base_auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPanel(),
          Column(
            children: [
              Expanded(
                child: Center(
                  child: SvgPicture.asset(
                    'assets/images/logo.svg',
                    height: 150,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'File UP을 이용하시려면 로그인이 필요합니다.\n로그인을 진행해주세요.',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    BaseAuthButton.google(),
                    BaseAuthButton.apple(),
                    BaseAuthButton.kakao(),
                    BaseAuthButton.naver(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('FileUp이 처음이신가요?'),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            '회원가입',
                            style: TextStyle(
                              color: Color.fromRGBO(89, 130, 200, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
