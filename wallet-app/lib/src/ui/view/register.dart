import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/src/ui/widget/background.dart';
import 'package:wallet_app/src/ui/widget/form.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyBackground(
        child: Padding(
      padding: const EdgeInsets.only(left: 30, top: 60, right: 40, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Create new account",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Colors.white,
                ),
          ),
          TextButton(
              onPressed: () => context.go('/'),
              child: Text('Already registered? Log in here',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70))),
          MyForm(
            register: true,
            submit: () {},
            buttonLabel: "Sign up",
          ),
        ],
      ),
    ));
  }
}
