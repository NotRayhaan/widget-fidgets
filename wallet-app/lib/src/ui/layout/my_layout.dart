import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget screen;
  const MainLayout({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: screen),
    );
  }
}
