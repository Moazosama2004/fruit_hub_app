import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/theming/colors.dart';
import 'package:fruit_hub_app/core/utils/assets.dart';
import 'package:fruit_hub_app/core/widgets/custom_app_button.dart';
import 'package:fruit_hub_app/features/onboarding/presentation/views/widgets/onboarding_page_view.dart';
import 'package:fruit_hub_app/features/onboarding/presentation/views/widgets/onboarding_page_view_item.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: OnboardingPageView(),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomAppButton(
            onPressed: () {},
            text: 'ابدأ الان',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
      ],
    );
  }
}
