import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key, required this.view});
  final Widget view;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: view,
    );
  }
}
