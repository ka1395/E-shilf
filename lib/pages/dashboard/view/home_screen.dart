import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../model/list_pages.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController? controller =
        PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      controller: controller,
      screens: screens(),
      items: navBarItems(),
      padding: const EdgeInsets.all(5),
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.bounceInOut,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.slide,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: 65,

      navBarStyle: NavBarStyle.style15, // Adjust based on your design needs
    );
  }
}
