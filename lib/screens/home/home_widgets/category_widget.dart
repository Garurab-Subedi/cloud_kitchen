import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:khaja_pani/utils%20/color.dart';
import 'package:khaja_pani/utils%20/image_strings.dart';
import 'package:khaja_pani/utils%20/size.dart';
import 'package:khaja_pani/utils%20/theme.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.height,
    required this.width,
    required this.image,
    required this.title,
    this.onTap,
  });

  final double height;
  final double width;
  final String image;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: GSize.spaceBtwItems),
        child: GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Container(
                height: height * 0.090,
                width: width * 0.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.grey),
                  boxShadow: [
                    BoxShadow(
                      color: GColors.darkerGrey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: const Offset(3, 5),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    CachedNetworkImage(
                      height: height * 0.068,
                      width: width,
                      imageUrl: image,
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      // errorWidget: (context, url, error) => const Icon(Icons.error),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      scale: 1.0,
                    ),
                    // const SizedBox(
                    //   height: GSize.xs,
                    // ),
                    Text(
                      title,
                      style: semibold.copyWith(fontSize: 10),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
