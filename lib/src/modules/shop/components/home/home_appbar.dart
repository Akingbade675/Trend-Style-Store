import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/appbar/appbar.dart';
import 'package:trend_style_store/src/components/products/cart/cart_menu_icon.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/texts.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppBarTitle,
            style:
                context.textTheme.labelMedium?.copyWith(color: TColors.white),
          ),
          Text(
            TTexts.homeAppBarSubtitle,
            style:
                context.textTheme.headlineSmall?.copyWith(color: TColors.white),
          ),
        ],
      ),
      actions: [
        TCartCounterIcon(
          iconColor: TColors.white,
          counterBgColor: TColors.dark.withOpacity(0.9),
          counterColor: TColors.white,
        ),
      ],
    );
  }
}
