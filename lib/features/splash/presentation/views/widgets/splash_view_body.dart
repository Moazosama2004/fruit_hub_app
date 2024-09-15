import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub_app/constants.dart';
import 'package:fruit_hub_app/core/routing/routes.dart';
import 'package:fruit_hub_app/core/services/shared_preferences_singleton.dart';
import 'package:fruit_hub_app/core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: SvgPicture.asset(Assets.assetsSvgsPlant)),
        SvgPicture.asset(Assets.assetsSvgsSplashLogoIcon),
        SvgPicture.asset(
          Assets.assetsSvgsSplashBubbleBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void excuteNavigation() {
    bool isOnBoardingSeen = Prefs.getBool(kisOnBoardingSeen);
    Future.delayed(
      const Duration(seconds: 5),
      () {
        if (isOnBoardingSeen) {
          Navigator.pushReplacementNamed(context, Routes.loginView);
        } else {
          Navigator.pushReplacementNamed(context, Routes.onBoardingView);
        }
      },
    );
  }
}
