import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:badges/badges.dart' as badges;
import 'package:khaja_pani/screens/home/home_screen.dart';
import 'package:khaja_pani/utils%20/color.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
      init: NavigationController(),
      builder: (controller) {
        return Scaffold(
          bottomNavigationBar: BottomAppBar(
            color: GColors.grey,
            shape: const CircularNotchedRectangle(),
            notchMargin: 10.0,
            child: SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildNavItem(Iconsax.home, "Home", 0, controller),
                  buildNavItem(Iconsax.menu, "Menu", 1, controller),
                  const SizedBox(width: 48), // Space for floating button
                  buildNavItem(Iconsax.message, "Message", 2, controller),
                  buildNavItem(Iconsax.user, "Profile", 3, controller),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            shape: const CircleBorder(),
            child: const badges.Badge(
              badgeContent: Text(
                '1', // Change dynamically based on cart count
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              badgeStyle: badges.BadgeStyle(badgeColor: GColors.primary),
              child: Icon(Iconsax.shopping_cart, color: Colors.black),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: controller.screens[controller.selectedIndex],
        );
      },
    );
  }

  Widget buildNavItem(
      IconData icon, String label, int index, NavigationController controller) {
    bool isSelected = controller.selectedIndex == index;

    return InkWell(
      onTap: () {
        controller.updateIndex(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? GColors.primary : Colors.black,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isSelected ? Colors.red : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationController extends GetxController {
  int selectedIndex = 0;

  final screens = [
    const HomeScreen(),
    Container(color: Colors.red),
    Container(color: Colors.orange),
    Container(color: Colors.blue),
  ];

  void updateIndex(int index) {
    selectedIndex = index;
    update(); // Updates UI
  }
}
