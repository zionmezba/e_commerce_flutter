import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class FBottomBar extends StatefulWidget {
  const FBottomBar({
    super.key,
    required this.currentIndex,
    required this.ontapMethod,
  });
  final int currentIndex;
  final Function(int) ontapMethod;

  @override
  State<FBottomBar> createState() => _FBottomBarState();
}

class _FBottomBarState extends State<FBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      selectedLabelStyle: TextStyle(fontSize: 11),
      unselectedLabelStyle: TextStyle(fontSize: 11),
      type: BottomNavigationBarType.fixed,
      onTap: widget.ontapMethod,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.home_outline,
            size: 20,
          ),
          label: "HOME",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.heart_outline,
            size: 20,
          ),
          label: "WISHLIST",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.shopping_bag_outline,
            size: 20,
          ),
          label: "ORDER",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesome.user,
            size: 20,
          ),
          label: "LOGIN",
        ),
      ],
    );
  }
}
