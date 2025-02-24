import 'package:flutter/material.dart';

import '../../../utils /image_strings.dart';
import '../../../utils /size.dart';
import '../../../utils /texts_string.dart';
import '../../../utils /theme.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImage.khajapani,
          height: size.height * 0.35,
        ),
        const SizedBox(height: GSize.sm),
        Text(
          GTexts.loginTitle,
          style: semibold.copyWith(
            fontSize: GSize.fontSizeLg,
          ),
        ),
        const SizedBox(height: GSize.sm),
        Text(
          GTexts.loginSubTitle,
          style: medium.copyWith(
            fontSize: 14,
            color: Colors.black54,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
