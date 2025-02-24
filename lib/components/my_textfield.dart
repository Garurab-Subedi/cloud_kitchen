import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../utils /theme.dart';

class MyTextFormField extends StatelessWidget {
  final String title;
  final String hinttext;
  // final TextEditingController? textEditingController;

  const MyTextFormField({
    super.key,
    required this.title,
    required this.hinttext,
    // this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: textEditingController,
      style: regular.copyWith(
        fontSize: 12,
        color: darkerBlack,
      ),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: darkerBlack,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: darkGrey,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          prefixIcon: const Icon(Iconsax.direct_right),
          labelText: title,
          hintText: hinttext,
          hintStyle: regular.copyWith(color: darkGrey),
          labelStyle: semibold.copyWith(fontSize: 13, color: Colors.black54)),
    );
  }
}
