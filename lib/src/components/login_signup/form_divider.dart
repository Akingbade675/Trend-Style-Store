import 'package:flutter/material.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';

class TFormDivider extends StatelessWidget {
  final String dividerText;

  const TFormDivider({
    super.key,
    required this.dividerText,
  });

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.grey : TColors.darkerGrey,
            // thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(dividerText, style: context.textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: dark ? TColors.grey : TColors.darkerGrey,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
