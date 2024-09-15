import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub_app/constants.dart';
import 'package:fruit_hub_app/core/routing/routes.dart';
import 'package:fruit_hub_app/core/services/shared_preferences_singleton.dart';
import 'package:fruit_hub_app/core/theming/style.dart';
import 'package:fruit_hub_app/core/utils/assets.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.subTitle,
      required this.title,
      required this.isVisiable});

  final String image, backgroundImage;
  final String subTitle;
  final Widget title;
  final bool isVisiable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                visible: isVisiable,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      Prefs.setBool(kisOnBoardingSeen, true);
                      Navigator.of(context)
                          .pushReplacementNamed(Routes.loginView);
                    },
                    child: Text(
                      'تخط',
                      style: TextStyles.regular13.copyWith(
                        color: const Color(0xFF949D9E),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37 + 8),
          child: Text(
            subTitle,
            style: TextStyles.semiBold13,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
