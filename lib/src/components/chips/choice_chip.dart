import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/circular_container.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/helpers/helper_functions.dart';

class TChoiceChip extends StatelessWidget {
  final String text;
  final bool selected;
  final ValueChanged<bool>? onSelected;

  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final color = THelperFunctions.getColor(text);
    final isColor = color != null;
    return Theme(
      // This is to make the chip background transparent
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? TColors.white : null),
        avatar: isColor
            ? TCircularContainer(width: 50, height: 50, backgroundColor: color)
            : null,
        shape: isColor ? const CircleBorder() : null,
        padding: isColor ? EdgeInsets.zero : null,
        labelPadding: isColor ? EdgeInsets.zero : null,
        selectedColor: color,
        backgroundColor: color,
      ),
    );
  }
}
