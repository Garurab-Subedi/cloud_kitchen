import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khaja_pani/components/circular_container.dart';
import 'package:khaja_pani/screens/home/home_widgets/bannerimage.dart';
import 'package:khaja_pani/utils%20/color.dart';

import '../../../controller/homeContoller/home_controller.dart';
import '../../../utils /size.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => BannerImage(imageUrl: url)).toList(),
          options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(seconds: 3),
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
        ),
        const SizedBox(
          height: GSize.spaceBtwItems,
        ),
        Obx(() => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  GCircularContainer(
                    widht: 8,
                    height: 8,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? GColors.primary
                        : GColors.slideactionsecondry,
                  ),
              ],
            ))
      ],
    );
  }
}
