import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/custom_shapes/curved_edges/curved_edges.dart';

class TCurvedEdgesWidget extends StatelessWidget {
  final Widget? child;

  const TCurvedEdgesWidget({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child,
    );
  }
}
