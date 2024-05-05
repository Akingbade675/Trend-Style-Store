import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/circular_container.dart';
import 'package:trend_style_store/src/components/products/ratings/rating_indicator.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TUserReviewCard extends StatelessWidget {
  const TUserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(backgroundImage: AssetImage(TImages.userAvatar)),
            TSpacer.hSpacing(TSizes.spaceBtwItems),
            Text('John Doe', style: context.textTheme.titleLarge),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        TSpacer.vSpacing(TSizes.spaceBtwItems),

        // -- Review --
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            TSpacer.hSpacing(TSizes.spaceBtwItems),
            Text('01 May 2024', style: context.textTheme.bodyMedium),
          ],
        ),
        TSpacer.vSpacing(TSizes.spaceBtwItems),
        const ReadMoreText(
          'The user interface is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
        ),
        TSpacer.vSpacing(TSizes.spaceBtwItems),

        // -- Company Review --
        TCircularContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Trend Style Store',
                        style: context.textTheme.titleMedium),
                    Text('04 May 2024', style: context.textTheme.bodyMedium),
                  ],
                ),
                TSpacer.vSpacing(TSizes.spaceBtwItems),
                const ReadMoreText(
                  'The user interface is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
        TSpacer.vSpacing(TSizes.spaceBtwSections),
      ],
    );
  }
}
