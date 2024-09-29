import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/theming/style.dart';
import 'package:fruit_hub_app/features/auth/presentation/views/widgets/custom_checkbox.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckbox(
          onChanged: (value) {
            isChecked = value;
            setState(() {});
          },
          isChecked: isChecked,
        ),
        const SizedBox(
          width: 16.0,
        ),
        SizedBox(
          width: 290,
          child: Text.rich(
            TextSpan(children: [
              TextSpan(
                text: 'من خلال إنشاء حساب ، فإنك توافق على',
                style: TextStyles.semiBold13.copyWith(
                  color: const Color(0xFF949D9E),
                ),
              ),
              TextSpan(
                text: ' الشروط والأحكام الخاصة بنا',
                style: TextStyles.semiBold13.copyWith(
                  color: const Color(0xFF2D9F5D),
                ),
              ),
            ]),
          ),
        )
      ],
    );
  }
}
