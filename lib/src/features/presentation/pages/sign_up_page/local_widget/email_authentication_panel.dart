import 'package:file_up/src/features/presentation/widgets/default_button.dart';
import 'package:flutter/material.dart';

import '../../../widgets/circle_text_field.dart';
import '../../../widgets/space_with_height.dart';

class EmailAuthenticationPanel extends StatelessWidget {
  const EmailAuthenticationPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text(
            'abcdefg@abcd.com(으)로 보내드린 인증 메일을\n확인해 주세요',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SpaceWithHeight(height: 10),
          const CircleTextField(
            hintText: 'name',
          ),
          const SpaceWithHeight(height: 20),
          const DefaultButton(title: '인증하기'),
          Row(
            children: [
              const Text('인증 메일을 못 받으셨나요?'),
              TextButton(
                onPressed: () {},
                child: const Text('다시 받기'),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      margin: const EdgeInsets.only(
        left: 45,
        right: 45,
      ),
    );
  }
}
