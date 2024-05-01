import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trend_style_store/src/components/images/rounded_image.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  TPromoSlider({
    super.key,
  });

  final ValueNotifier<int> activeIndex = ValueNotifier<int>(0);
  final List<String> promoBanners = [
    TImages.promoBanner1,
    TImages.promoBanner2,
    TImages.promoBanner3,
    TImages.promoBanner4,
    TImages.promoBanner5,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: 3,
          itemBuilder: (context, index, realIndex) {
            return TRoundedImage(imageUrl: promoBanners[index]);
          },
          options: CarouselOptions(
            height: 200,
            viewportFraction: 1.0,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              activeIndex.value = index;
            },
          ),
        ),
        TSpacer.vSpacing(TSizes.spaceBtwItems),
        ValueListenableBuilder(
            valueListenable: activeIndex,
            builder: (context, value, child) {
              return AnimatedSmoothIndicator(
                activeIndex: value,
                count: 3,
                effect: const ExpandingDotsEffect(
                  activeDotColor: TColors.primary,
                  dotHeight: 6,
                ),
              );
            }),
      ],
    );
  }
}
