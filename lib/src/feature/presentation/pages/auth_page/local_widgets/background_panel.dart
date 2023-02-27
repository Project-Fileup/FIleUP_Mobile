import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgroundPanel extends StatelessWidget {
  const BackgroundPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SvgPicture.asset(
            'assets/images/background.svg',
            fit: BoxFit.cover,
            height: 600,
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
          child: Container(color: Colors.white.withOpacity(.5)),
        ),
      ],
    );
  }
}
