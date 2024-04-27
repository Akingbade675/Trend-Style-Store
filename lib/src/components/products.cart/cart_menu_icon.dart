import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';

class TCartCounterIcon extends StatelessWidget {
  final Color iconColor;
  final VoidCallback onPressed;

  const TCartCounterIcon({
    super.key,
    required this.iconColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            color: iconColor,
            icon: const Icon(Iconsax.shopping_bag)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: TColors.dark.withOpacity(0.8),
              shape: BoxShape.circle,
            ),
            child: Text('3',
                style:
                    context.textTheme.labelLarge?.apply(fontSizeFactor: 0.8)),
          ),
        ),
      ],
    );
  }
}
