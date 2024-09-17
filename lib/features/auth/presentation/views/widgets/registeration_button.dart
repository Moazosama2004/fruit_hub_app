import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub_app/core/theming/style.dart';

class RegisterationButton extends StatelessWidget {
  const RegisterationButton(
      {super.key,
      required this.methodImage,
      required this.method,
      required this.onPressed});

  final String methodImage, method;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFDCDEDE)),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 18,
            bottom: 17,
            top: 17,
          ),
          child: Row(
            children: [
              SizedBox(
                height: 28,
                width: 28,
                child: SvgPicture.asset(
                  methodImage,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                width: 55,
              ),
              Text(
                'تسجيل بواسطة $method',
                textAlign: TextAlign.center,
                style: TextStyles.semiBold16.copyWith(
                  color: const Color(0xFF0C0D0D),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
