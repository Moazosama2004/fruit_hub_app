import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/theming/style.dart';

class CustomAppTextFormField extends StatelessWidget {
  const CustomAppTextFormField(
      {super.key, required this.text, this.suffixIcon,  this.keyboardType  =  TextInputType.text});

  final String text;
  final Widget? suffixIcon;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyles.bold13.copyWith(
          color: const Color(0xFF949D9E),
        ),
        suffixIcon: suffixIcon,
        fillColor: const Color(0xFFf9fafa),
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(
        width: 1,
        color: Color(0xFFE6E9E9),
      ),
    );
  }
}
