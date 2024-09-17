import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/theming/colors.dart';
import 'package:fruit_hub_app/core/theming/style.dart';
import 'package:fruit_hub_app/core/utils/assets.dart';
import 'package:fruit_hub_app/core/widgets/custom_app_button.dart';
import 'package:fruit_hub_app/core/widgets/custom_app_text_form_field.dart';
import 'package:fruit_hub_app/features/auth/presentation/views/widgets/dont_have_an_account.dart';
import 'package:fruit_hub_app/features/auth/presentation/views/widgets/or_widget.dart';
import 'package:fruit_hub_app/features/auth/presentation/views/widgets/registeration_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.ligthPrimaryColor),
                ),
              ],
            ),
            const SizedBox(
              height: 34,
            ),
            CustomAppButton(onPressed: () {}, text: 'تسجيل دخول'),
            const SizedBox(
              height: 34,
            ),
            DontHaveAnAccount(
              onPressed: () {},
            ),
            const SizedBox(
              height: 32,
            ),
            const OrWidget(),
            const SizedBox(
              height: 20,
            ),
            RegisterationButton(
              methodImage: Assets.assetsSvgsGoogle,
              method: 'جوجل',
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            RegisterationButton(
              methodImage: Assets.assetsSvgsApple,
              method: 'أبل',
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            RegisterationButton(
              methodImage: Assets.assetsSvgsFacebook,
              method: 'فيسبوك',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
