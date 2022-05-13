import 'package:file_up/src/config/values/app_colors.dart';
import 'package:flutter/material.dart';

class CircleTextField extends StatelessWidget {
  const CircleTextField({
    Key? key,
    this.hintText = '',
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: _border(),
        focusedBorder: _border(),
        contentPadding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      ),
    );
  }

  _border() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: AppColors.primaryColor,
          width: 2,
        ),
      );
}
