import 'package:flutter/material.dart';

import '../utils /color.dart';

class GCircularContainer extends StatelessWidget {
  const GCircularContainer({
    super.key,
    this.widht = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.margin,
    this.child,
    this.backgroundColor = GColors.white,
  });

  final double? widht;
  final double? height;
  final double? radius;
  final double? padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius!), color: backgroundColor),
      child: child,
    );
  }
}
