import 'package:flutter/material.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';

class TProductPriceText extends StatelessWidget {
  final String currencySign, price;
  final int maxLines;
  final bool isLarge, lineThrough;

  const TProductPriceText({
    super.key,
    this.currencySign = '\$',
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? context.textTheme.headlineMedium?.copyWith(
              decoration: lineThrough ? TextDecoration.lineThrough : null,
            )
          : context.textTheme.titleLarge?.copyWith(
              decoration: lineThrough ? TextDecoration.lineThrough : null,
            ),
    );
  }
}
