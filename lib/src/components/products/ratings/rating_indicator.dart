import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';

class TRatingBarIndicator extends StatelessWidget {
  final double rating;

  const TRatingBarIndicator({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemSize: 20,
      rating: rating,
      unratedColor: TColors.grey,
      itemBuilder: (_, __) => const Icon(Iconsax.star1),
    );
  }
}
