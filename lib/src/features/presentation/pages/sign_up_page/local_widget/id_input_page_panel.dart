import 'package:flutter/material.dart';

import 'email_authentication_panel.dart';
import 'next_button.dart';
import 'user_info_input_panel.dart';

class IDInputPagePanel extends StatelessWidget {
  const IDInputPagePanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: PageView(
            children: const [
              UserInfoInputPanel(),
              EmailAuthenticationPanel(),
            ],
          ),
          height: MediaQuery.of(context).size.height * 0.32,
        ),
        Container(
          child: Row(
            children: const [
              NextButton(),
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          ),
          margin: const EdgeInsets.only(
            left: 45,
            right: 45,
          ),
        ),
      ],
    );
  }
}
