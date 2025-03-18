import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class FBottomBar extends StatelessWidget {
  const FBottomBar({
    super.key,
    required this.currentIndex,
    required this.onTapMethod,
  });

  final int currentIndex;
  final Function(int) onTapMethod;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTapMethod,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.home_outline,
          ),
          label: "HOME",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.heart_outline,
          ),
          label: "WISHLIST",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.shopping_bag_outline,
          ),
          label: "ORDER",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.user_outline,
          ),
          label: "ACCOUNT",
        ),
      ],
    );
  }
}
