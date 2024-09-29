import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/widgets/custom_app_button.dart';
import 'package:fruit_hub_app/core/widgets/custom_app_text_form_field.dart';
import 'package:fruit_hub_app/features/auth/presentation/views/widgets/already_have_an_account.dart';
import 'package:fruit_hub_app/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomAppTextFormField(
              keyboardType: TextInputType.text,
              text: 'الاسم كامل',
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomAppTextFormField(
              keyboardType: TextInputType.emailAddress,
              text: 'البريد الإلكتروني',
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomAppTextFormField(
              keyboardType: TextInputType.visiblePassword,
              text: 'كلمة المرور',
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffc9cecf),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const TermsAndConditions(),
            const SizedBox(
              height: 30,
            ),
            CustomAppButton(onPressed: () {}, text: 'إنشاء حساب جديد'),
            const SizedBox(
              height: 26,
            ),
            const AlreadyHaveAnAccount(
          ),
          ],
        ),
      ),
    );
  }
}
