import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/src/ui/widget/background.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return MyBackground(
        child: Padding(
      padding: const EdgeInsets.only(left: 30, top: 100, right: 40, bottom: 20),
      child: Center(
          child: Column(
        children: [
          Text('Loser', style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.white70)),
          TextButton(
              onPressed: () => context.go('/'),
              child: Text('Go back', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70))),
        ],
      )),
    ));
  }
}
