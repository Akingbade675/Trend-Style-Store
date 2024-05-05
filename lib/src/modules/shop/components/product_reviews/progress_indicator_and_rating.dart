import 'package:flutter/material.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';

class TRatingProgessIndicator extends StatelessWidget {
  final String text;
  final double value;

  const TRatingProgessIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1, child: Text(text, style: context.textTheme.bodyMedium)),
        Expanded(
          flex: 11,
          child: LinearProgressIndicator(
            value: value,
            backgroundColor: TColors.grey,
            valueColor: const AlwaysStoppedAnimation(TColors.primary),
            minHeight: 11,
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ],
    );
  }
}
