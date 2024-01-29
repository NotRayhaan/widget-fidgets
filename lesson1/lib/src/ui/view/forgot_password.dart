import 'package:flutter/material.dart';
import 'package:lesson1/src/ui/widget/background.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return MyBackground(
        child: Padding(
      padding: const EdgeInsets.only(left: 30, top: 100, right: 40, bottom: 20),
      child: Center(
          child: Text('Loser', style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.white70))),
    ));
  }
}
