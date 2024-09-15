import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/theming/colors.dart';
import 'package:fruit_hub_app/core/theming/style.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton(
      {super.key, required this.onPressed, required this.text});

  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: const Size(double.infinity, 54),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16.0,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyles.bold16,
      ),
    );
  }
}
