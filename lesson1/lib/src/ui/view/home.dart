import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lesson1/src/ui/widget/item_card.dart';

List<Crypto> cryptos = [
  const Crypto("Bitcoin", 25.895325, 8.89, 89.759, 4.89),
  const Crypto("Ethereum", 15.789325, 5.85, 54.724, 54.23),
  const Crypto("Dogecoin", 5.679121, 2.65, 5.385, -5.93),
];

const sorts = ["Name", "Value", "Percentage"];

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String sort = "Name";
  bool ascending = false;

  int sortList(String type, Crypto a, Crypto b) {
    switch (type) {
      case "Name":
        return a.name.compareTo(b.name);
      case "Value":
        return b.value.compareTo(a.value);
      case "Percentage":
        return b.percentage.compareTo(a.percentage);
      default:
        return b.name.compareTo(a.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(16), children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      ascending = !ascending;
                    });
                    cryptos = cryptos.reversed.toList();
                  },
                  child: ascending ? const Icon(Icons.keyboard_arrow_up) : const Icon(Icons.keyboard_arrow_down)),
              DropdownButton(
                value: sort,
                underline: const ColoredBox(
                  color: Colors.transparent,
                ),
                icon: const Icon(null),
                iconSize: 32,
                items: sorts.map((type) => DropdownMenuItem(value: type, child: Text(type))).toList(),
                onChanged: (type) {
                  setState(() {
                    sort = type!;
                  });
                  ascending = false;
                  cryptos.sort((a, b) => sortList(type!, a, b));
                },
              ),
            ],
          ),
          DropdownButton(
            value: "Last 24h",
            underline: const ColoredBox(
              color: Colors.transparent,
            ),
            icon: const Icon(Icons.keyboard_arrow_down),
            iconSize: 32,
            items: ["Last 24h"].map((type) => DropdownMenuItem(value: type, child: Text(type))).toList(),
            onChanged: (string) {},
          ),
        ],
      ),
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
