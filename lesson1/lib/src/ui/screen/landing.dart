import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key, required this.view});
  final Widget view;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const DrawerButtonIcon(),
        title: Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CircleAvatar(),
            ),
            Text(
              "My Wallet",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.display_settings_outlined),
          )
        ],
      ),
      body: Center(child: view),
      backgroundColor: Colors.black12,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.compass_calibration_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "")
        ],
      ),
    );
  }
}
