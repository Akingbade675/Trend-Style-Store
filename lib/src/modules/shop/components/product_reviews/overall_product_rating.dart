import 'package:flutter/material.dart';
import 'package:trend_style_store/src/modules/shop/components/product_reviews/progress_indicator_and_rating.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';

class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3, child: Text('4.6', style: context.textTheme.displayLarge)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingProgessIndicator(text: '5', value: 1.0),
              TRatingProgessIndicator(text: '4', value: 0.8),
              TRatingProgessIndicator(text: '3', value: 0.6),
              TRatingProgessIndicator(text: '2', value: 0.4),
              TRatingProgessIndicator(text: '1', value: 0.2),
            ],
          ),
        ),
      ],
    );
  }
}
