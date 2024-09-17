import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/theming/style.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: ' لا تمتلك حساب؟',
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
          TextSpan(
              text: ' قم بأنشاء حساب',
              style: TextStyles.semiBold16.copyWith(
                color: const Color(0xFF1B5E37),
              ),
              recognizer: TapGestureRecognizer()..onTap = onPressed),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
