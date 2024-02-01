import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/src/ui/widget/expanded_card.dart';
import 'package:wallet_app/src/ui/widget/crypto_card.dart';
import 'package:wallet_app/src/ui/widget/transfer_card.dart';

List<Crypto> cryptos = [
  const Crypto("Bitcoin", 25.895325, 8.89, 89.759, 4.89),
  const Crypto("Ethereum", 15.789325, 5.85, 54.724, 54.23),
  const Crypto("Dogecoin", 5.679121, 2.65, 5.385, -5.93),
];
List<Transfer> transfers = [
  const Transfer(23.45, "15/02/24", "Jane Doe", false),
  const Transfer(48.35, "17/02/25", "Abdul Aziz", true),
  const Transfer(168.92, "10/02/24", "Himothy", false),
];

Balance myBalance = Balance(149.868, 29.89, transfers.map((transfer) => TransferCard(transfer: transfer)).toList());

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
      ExpandedCard(
        myBalance: myBalance,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TextButton(
                  style: ButtonStyle(minimumSize: MaterialStateProperty.all(const Size(12, 12))).copyWith(
                      iconColor: MaterialStateProperty.all(Colors.grey.shade600),
                      iconSize: MaterialStateProperty.all(32)),
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
        (currency) => ItemCard(
          crypto: currency,
        ),
      ),
      TextButton(
          onPressed: () {
            context.go('/');
          },
          child: const Text('Sign out')),
    ]);
  }
}
