import 'package:flutter/material.dart';

class SpaceWithHeight extends StatelessWidget {
  const SpaceWithHeight({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
