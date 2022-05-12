import 'package:file_up/src/features/presentation/widgets/logo.dart';
import 'package:flutter/material.dart';

class SignBackGroundFrame extends StatelessWidget {
  const SignBackGroundFrame({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(child: Logo()),
          Expanded(child: child),
        ],
      ),
    );
  }
}
