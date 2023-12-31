import 'package:flutter/material.dart';

class FloatingVerticalMenuDelegate extends FlowDelegate {
  final AnimationController animation;

  FloatingVerticalMenuDelegate({required this.animation})
      : super(repaint: animation);

  @override
  void paintChildren(FlowPaintingContext context) {
    const buttonSize = 60;
    const buttonRadius = buttonSize / 2;
    const buttonMargin = 10;

    final positionX = context.size.width - buttonSize;
    final positionY = context.size.height - buttonSize;
    final lastindex = context.childCount - 1;

    for (int i = lastindex; i >= 0; i--) {
      final y = positionY - ((buttonSize + buttonMargin) * i * animation.value);
      final size = (i != 0) ? animation.value : 1.0;

      context.paintChild(
        i,
        transform: Matrix4.translationValues(positionX, y, 0)
          ..translate(buttonRadius, buttonRadius)
          ..scale(size)
          ..translate(-buttonRadius, -buttonRadius),
      );
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) => false;
}
