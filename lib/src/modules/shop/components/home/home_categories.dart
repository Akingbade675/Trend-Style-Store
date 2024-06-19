import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trend_style_store/src/components/image_text_widgets/vertical_image_text.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/modules/shop/views/sub_category.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.w,
      child: ListView.separated(
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        separatorBuilder: (_, __) => TSpacer.hSpacing(TSizes.spaceBtwItems),
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImages.brandImage3,
            title: 'Shoes',
            onTap: () => context.push(const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}
