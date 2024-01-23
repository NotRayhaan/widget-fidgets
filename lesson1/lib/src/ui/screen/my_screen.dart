import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key, required this.view});
  final Widget view;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: view,
    );
  }
}
