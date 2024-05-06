import 'package:flutter/material.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';

class TSectionHeading extends StatelessWidget {
  final String title, buttonText;
  final bool showActionButton;
  final Color? textColor;
  final VoidCallback? onPressed;

  const TSectionHeading({
    super.key,
    required this.title,
    this.buttonText = 'View all',
    this.showActionButton = true,
    this.textColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: context.textTheme.headlineSmall?.copyWith(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed ?? () {}, child: Text(buttonText)),
      ],
    );
  }
}
