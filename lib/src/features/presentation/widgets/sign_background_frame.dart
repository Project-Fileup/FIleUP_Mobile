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
          SizedBox(
            child: const Logo(),
            height: MediaQuery.of(context).size.height * 0.45,
          ),
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}
