import 'package:flutter/material.dart';

class GuideText extends StatelessWidget {
  const GuideText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'File UP을 이용하시려면 로그인이 필요합니다.\n로그인을 진행해주세요.',
      style: TextStyle(fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}

class HelpText extends StatelessWidget {
  const HelpText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('FileUp이 처음이신가요?'),
        TextButton(
          onPressed: () {},
          child: const Text(
            '회원가입',
            style: TextStyle(
              color: Color.fromRGBO(89, 130, 200, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
