import 'package:coffe_shop/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    const selectedColor = Apptheme.iconActiveColor;
    const unSelectedColor = Apptheme.iconColor;
    const currentIndex = 0;

    return SizedBox(
      height: 120,
      child: StylishBottomBar(
        backgroundColor: const Color(0xff0D1015),
        items: [
          BottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text('All'),
            selectedIcon: const Icon(Icons.home),
            selectedColor: selectedColor,
            unSelectedColor: unSelectedColor,
          ),
          BottomBarItem(
            icon: const Icon(Icons.shopping_bag_rounded),
            title: const Text('Completed'),
            selectedIcon: const Icon(Icons.shopping_bag_rounded),
            selectedColor: selectedColor,
            unSelectedColor: unSelectedColor,
          ),
          BottomBarItem(
            icon: const Icon(Icons.favorite),
            selectedIcon: const Icon(Icons.favorite),
            title: const Text('Pending'),
            selectedColor: selectedColor,
            unSelectedColor: unSelectedColor,
          ),
          BottomBarItem(
            icon: const Icon(Icons.notification_add_rounded),
            selectedIcon: const Icon(Icons.notification_add_rounded),
            title: const Text('Reminders'),
            selectedColor: selectedColor,
            unSelectedColor: unSelectedColor,
          ),
        ],
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: currentIndex,
        onTap: (index) {},
        option: AnimatedBarOptions(
          iconSize: 25,
          barAnimation: BarAnimation.fade,
          iconStyle: IconStyle.simple,
          opacity: 0.4,
        ),
      ),
    );
  }
}
