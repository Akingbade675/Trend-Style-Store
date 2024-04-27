import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/image_text_widgets/vertical_image_text.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        separatorBuilder: (_, __) => TSpacer.hSpacing(TSizes.spaceBtwItems),
        itemBuilder: (_, index) {
          return const TVerticalImageText(
              image: TImages.shoesCategoryIcon, title: 'Shoes');
        },
      ),
    );
  }
}
