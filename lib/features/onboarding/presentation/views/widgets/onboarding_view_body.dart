import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub_app/constants.dart';
import 'package:fruit_hub_app/core/routing/routes.dart';
import 'package:fruit_hub_app/core/services/shared_preferences_singleton.dart';
import 'package:fruit_hub_app/core/theming/colors.dart';
import 'package:fruit_hub_app/core/utils/assets.dart';
import 'package:fruit_hub_app/core/widgets/custom_app_button.dart';
import 'package:fruit_hub_app/features/onboarding/presentation/views/widgets/onboarding_page_view.dart';
import 'package:fruit_hub_app/features/onboarding/presentation/views/widgets/onboarding_page_view_item.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnboardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: currentPage != 0
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Visibility(
          visible: currentPage == 0 ? false : true,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomAppButton(
              onPressed: () {
                Prefs.setBool(kisOnBoardingSeen, true);
                Navigator.of(context).pushReplacementNamed(Routes.loginView);
              },
              text: 'ابدأ الان',
            ),
          ),
        ),
        const SizedBox(
          height: 43,
        ),
      ],
    );
  }
}
