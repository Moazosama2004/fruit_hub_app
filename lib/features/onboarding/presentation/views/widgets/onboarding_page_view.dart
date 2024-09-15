import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/utils/assets.dart';
import 'package:fruit_hub_app/features/onboarding/presentation/views/widgets/onboarding_page_view_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItem(
          image: Assets.assetsSvgsPageViewItemImage1,
          backgroundImage: Assets.assetsSvgsPageViewItemBackgroundImage1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('مرحبًا بك في'),
              Text('HUB'),
              Text('Fruit'),
            ],
          ),
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        ),
        PageViewItem(
            image: Assets.assetsSvgsPageViewItemImage2,
            backgroundImage: Assets.assetsSvgsPageViewItemBackgroundImage2,
            title: Text('ابحث وتسوق'),
            subTitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية'),
      ],
    );
  }
}