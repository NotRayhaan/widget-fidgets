import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lesson1/src/ui/widget/background.dart';
import 'package:lesson1/src/ui/widget/button.dart';
import 'package:lesson1/src/ui/widget/form.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyBackground(
        child: Padding(
      padding: const EdgeInsets.only(left: 30, top: 100, right: 40, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Colors.white,
                ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text("Sign in to continue",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70)),
          ),
          const MyForm(),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: MyButton(
              label: "Log in",
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child:
                Text("Forgot password?", style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white70)),
          ),
          TextButton(
              onPressed: () => context.go('/register'),
              child: Text('Signup !', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white70)))
        ],
      ),
    ));
  }
}
