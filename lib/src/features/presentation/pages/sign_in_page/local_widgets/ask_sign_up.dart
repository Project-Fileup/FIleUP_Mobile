import 'package:flutter/material.dart';

class AskSignUp extends StatelessWidget {
  const AskSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('file up이 처음이신가요?'),
        TextButton(
          onPressed: () {},
          child: Text('회원가입'),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
