import 'package:flutter/material.dart';
import 'package:khaja_pani/utils%20/color.dart';
import 'package:khaja_pani/utils%20/size.dart';
import 'package:khaja_pani/utils%20/theme.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });

  final String title;
  final String subTitle;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        title,
        style: semibold.copyWith(fontSize: GSize.fontSizeLg),
      ),
      const SizedBox(
        width: GSize.sm,
      ),
      TextButton(
          onPressed: onPressed,
          child: Text(
            subTitle,
            style: regular.copyWith(
                fontSize: GSize.fontSizeSm, color: GColors.primary),
          ))
    ]);
  }
}
