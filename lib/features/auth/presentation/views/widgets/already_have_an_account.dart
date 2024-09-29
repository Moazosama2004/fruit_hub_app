import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/theming/style.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'تمتلك حساب بالفعل؟',
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
          TextSpan(
              text: ' تسجيل دخول',
              style: TextStyles.semiBold16.copyWith(
                color: const Color(0xFF1B5E37),
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pop(context);
                }),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
