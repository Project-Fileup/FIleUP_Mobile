import 'package:file_up/src/features/presentation/widgets/logo.dart';
import 'package:flutter/material.dart';

class SignBackGroundFrame extends StatelessWidget {
  const SignBackGroundFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(child: Logo()),
          Expanded(child: body()),
        ],
      ),
    );
  }

  body() => Container();
}
