import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_style_store/src/modules/shop/views/home.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({super.key});

  final ValueNotifier<int> indexNotifier = ValueNotifier(0);

  final List<Widget> pages = const [
    HomeScreen(),
    Center(child: Text('Store')),
    Center(child: Text('Wishlist')),
    Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return ValueListenableBuilder(
        valueListenable: indexNotifier,
        builder: (context, index, child) {
          return Scaffold(
            body: IndexedStack(children: [pages[index]]),
            bottomNavigationBar: NavigationBar(
              height: 80,
              elevation: 0,
              backgroundColor: dark ? TColors.dark : TColors.white,
              indicatorColor: dark
                  ? TColors.white.withOpacity(0.1)
                  : TColors.dark.withOpacity(0.1),
              selectedIndex: index,
              onDestinationSelected: (value) => indexNotifier.value = value,
              destinations: const [
                NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
                NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
                NavigationDestination(
                    icon: Icon(Iconsax.heart), label: 'Wishlist'),
                NavigationDestination(
                    icon: Icon(Iconsax.user), label: 'Profile'),
              ],
            ),
          );
        });
  }
}
