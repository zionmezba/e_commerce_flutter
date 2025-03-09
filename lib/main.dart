import 'package:flutter/material.dart';

void main() {
  runApp(const MyEcom());
}

class MyEcom extends StatelessWidget {
  const MyEcom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Freebies E-Commerce",
      home: Home(),
    );
  }
}
