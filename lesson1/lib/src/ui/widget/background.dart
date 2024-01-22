import 'package:flutter/material.dart';

class MyBackground extends StatelessWidget {
  const MyBackground({super.key, this.child, required this.color});
  final Widget? child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
      child: child,
    );
  }
}
