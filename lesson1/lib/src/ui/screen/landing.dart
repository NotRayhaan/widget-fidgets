import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key, required this.view});
  final Widget view;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: view,
    );
  }
}
