import 'package:flutter/material.dart';

import '../../../../../config/values/app_colors.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: () {},
        child: const Icon(
          Icons.arrow_forward_rounded,
          color: Colors.white,
        ),
        style: ElevatedButton.styleFrom(
          primary: AppColors.primaryColor,
        ),
      ),
      height: 48,
    );
  }
}
