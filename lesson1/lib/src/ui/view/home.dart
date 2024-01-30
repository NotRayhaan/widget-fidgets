import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lesson1/src/ui/widget/item_card.dart';

const cryptos = <Crypto>[
  Crypto("Bitcoin", 25.895325, 8.89, 89.759, 4.89),
  Crypto("Ethereum", 15.789325, 5.85, 54.724, 54.23),
  Crypto("Dogecoin", 5.679121, 2.65, 5.385, -5.93),
];

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(16), children: [
      ...cryptos.map(
        (currency) => SizedBox(
            child: ItemCard(
          crypto: currency,
        )),
      ),
      TextButton(
          onPressed: () {
            context.go('/');
          },
          child: const Text('Sign out')),
    ]);
  }
}
