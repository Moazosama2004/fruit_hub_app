import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub_app/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

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
}
