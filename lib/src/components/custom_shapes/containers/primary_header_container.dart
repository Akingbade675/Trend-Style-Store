import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/circular_container.dart';
import 'package:trend_style_store/src/components/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  final Widget child;

  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          padding: EdgeInsets.zero,
          color: TColors.primary,
          child: Stack(
            children: [
              Positioned(
                right: -250,
                top: -150,
                child: TCircularContainer(
                    width: 400,
                    height: 400,
                    radius: 400,
                    backgroundColor: TColors.textWhite.withOpacity(0.1)),
              ),
              Positioned(
                right: -300,
                top: 100,
                child: TCircularContainer(
                    width: 400,
                    height: 400,
                    radius: 400,
                    backgroundColor: TColors.textWhite.withOpacity(0.1)),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
