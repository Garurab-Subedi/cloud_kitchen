import 'package:flutter/material.dart';

import '../../../utils /color.dart';
import '../../../utils /image_strings.dart';
import '../../../utils /size.dart';
import '../../../utils /texts_string.dart';
import '../../../utils /theme.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AppImage.appLogo,
          width: width * 0.3,
          height: height * 0.3,
        ),
        Column(
          children: [
            Text(
              GTexts.wellcome,
              style: semibold.copyWith(
                  fontSize: GSize.fontSizeSm, color: Colors.black),
            ),
            const SizedBox(height: 5.0),
            Row(children: [
              const Icon(Icons.location_pin,
                  size: GSize.iconmd, color: Colors.black54),
              const SizedBox(width: 5.0),
              Text(
                'Pokhara Chauthe',
                style: regular.copyWith(
                    fontSize: GSize.fontSizeSm, color: Colors.black54),
              ),
            ]),
          ],
        ),
        const SizedBox(width: 10.0),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              border: Border.all(color: GColors.primary),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(2.0, 2.0),
                  blurRadius: 4.0,
                ),
              ]),
          child: const Icon(
            Icons.notification_important,
            color: Colors.black,
            size: GSize.iconmd,
          ),
        )
      ],
    );
  }
}
