import 'package:flutter/material.dart';
import 'package:khaja_pani/components/product_title.dart';
import 'package:khaja_pani/components/search_button.dart';
import 'package:khaja_pani/screens/home/home_widgets/banner_slide.dart';
import 'package:khaja_pani/screens/home/home_widgets/category_widget.dart';
import 'package:khaja_pani/utils%20/image_strings.dart';

import '../../utils /size.dart';
import 'home_widgets/custome_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 0.09,
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        elevation: 4.0,
        automaticallyImplyLeading: false,
        title: CustomAppBar(width: width, height: height),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSize.pagePadding),
          child: Column(
            children: [
              const SizedBox(height: GSize.spaceBtwInputFields),
              const SearchButton(),
              const SizedBox(height: GSize.spaceBtwInputFields),
              ProductTitle(
                title: 'Specila Offers',
                subTitle: 'View all',
                onPressed: () {},
              ),
              const BannerSlider(
                banners: [AppImage.banner1, AppImage.banner2],
              ),
              const SizedBox(height: GSize.sm),
              ProductTitle(
                title: 'Category',
                subTitle: 'View all',
                onPressed: () {},
              ),
              const SizedBox(height: GSize.sm),
              Category(
                height: height,
                width: width,
                title: 'No Title',
                image: AppImage.facebook,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
