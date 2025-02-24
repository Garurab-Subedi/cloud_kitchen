import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khaja_pani/utils%20/theme.dart';

import '../../../utils /size.dart';

class OnBoardingWidgets extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subtitle;
  const OnBoardingWidgets({
    super.key,
    this.image,
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      child: Column(children: [
        Container(
          height: Get.height * 0.60,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('$image'), scale: 1)),
        ),
        Container(
          height: Get.height * 0.30,
          width: Get.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.white),
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '$title',
                style: semibold.copyWith(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text('$subtitle',
                  style: regular.copyWith(
                      fontSize: GSize.fontSizeSm, color: Colors.black54),
                  textAlign: TextAlign.center),
            ],
          ),
        )
      ]),
    );
  }
}
