import 'package:e_commerce_flutter/screens/home/page/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../common/widgets/app_bar.dart';
import '../widgets/bottom_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _homeScreens = [
    HomeScreen(),
    Container(
      height: double.infinity,
      color: Colors.red,
    ),
    Container(
      height: double.infinity,
      color: Colors.lightBlue,
    ),
    Container(
      height: double.infinity,
      color: Colors.green,
    ),
  ];
  void _onTapMethod(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(
        title: "Mega Shop",
        firstIcon: Iconsax.notification_bing_outline,
      ),
      body: _homeScreens[_currentIndex],
      bottomNavigationBar: FBottomBar(
        currentIndex: _currentIndex,
        ontapMethod: _onTapMethod,
      ),
    );
  }
}
