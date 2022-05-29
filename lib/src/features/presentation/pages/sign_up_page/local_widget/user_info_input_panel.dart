import 'package:file_up/src/features/presentation/widgets/circle_text_field.dart';
import 'package:file_up/src/features/presentation/widgets/space_with_height.dart';
import 'package:flutter/material.dart';

class UserInfoInputPanel extends StatelessWidget {
  const UserInfoInputPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          CircleTextField(
            hintText: 'name',
          ),
          SpaceWithHeight(height: 20),
          CircleTextField(
            hintText: 'email',
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
