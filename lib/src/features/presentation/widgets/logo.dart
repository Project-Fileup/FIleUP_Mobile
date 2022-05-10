import 'package:file_up/src/config/values/urls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: Svg(URLS.logo_url),
    );
  }
}
