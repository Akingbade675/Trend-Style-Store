import 'package:flutter/material.dart';
import 'package:trend_style_store/src/utils/constants/enums.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brantTextSize = TextSizes.small,
    required this.color,
  });

  final String title;
  final int maxLines;
  final TextAlign textAlign;
  final TextSizes brantTextSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
      style: switch (brantTextSize) {
        TextSizes.small =>
          context.textTheme.labelMedium?.copyWith(color: color),
        TextSizes.medium => context.textTheme.bodyLarge?.copyWith(color: color),
        TextSizes.large => context.textTheme.titleLarge?.copyWith(color: color),
        _ => context.textTheme.bodyMedium?.copyWith(color: color),
      },
    );
  }
}
