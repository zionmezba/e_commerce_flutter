import 'package:e_commerce_flutter/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mega Shop",
          style: TextStyle(
            fontFamily: "DMSans",
            fontWeight: FontWeight.w700,
            color: FColors.oceanBlue,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
