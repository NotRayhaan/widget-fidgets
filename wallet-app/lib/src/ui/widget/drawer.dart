import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerHeader(
            child: Text(
          "My Wallet",
          style: Theme.of(context).textTheme.titleLarge,
        )),
        ListTile(
          title: Text("Account"),
        )
      ],
    );
  }
}
