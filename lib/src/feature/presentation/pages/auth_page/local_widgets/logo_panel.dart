import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoPanel extends StatelessWidget {
  const LogoPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SvgPicture.asset(
          'assets/images/logo.svg',
          height: 150,
        ),
      ),
    );
  }
}
