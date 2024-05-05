import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/appbar/appbar.dart';
import 'package:trend_style_store/src/components/products/ratings/rating_indicator.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/modules/shop/components/product_reviews/overall_product_rating.dart';
import 'package:trend_style_store/src/modules/shop/components/product_reviews/user_review_card.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const TAppBar(title: Text('Rating & Reviews'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              TSpacer.vSpacing(TSizes.spaceBtwItems),

              // -- Product Ratings --
              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 4.6),
              Text('12, 661', style: context.textTheme.bodySmall),
              TSpacer.vSpacing(TSizes.spaceBtwSections),

              // -- User Reviews List --
              const TUserReviewCard(),
              const TUserReviewCard(),
              const TUserReviewCard(),
              const TUserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
