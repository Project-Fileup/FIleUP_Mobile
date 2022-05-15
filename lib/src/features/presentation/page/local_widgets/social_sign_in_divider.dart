import 'package:flutter/material.dart';

class SocialSignInDivider extends StatelessWidget {
  const SocialSignInDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        expandedDivider(),
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Text('소셜 로그인'),
        ),
        expandedDivider(),
      ],
    );
  }

  expandedDivider() {
    return const Expanded(
      child: Divider(
        color: Colors.black,
      ),
    );
  }
}
