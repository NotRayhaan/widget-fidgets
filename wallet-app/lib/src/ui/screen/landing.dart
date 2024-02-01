import 'package:flutter/material.dart';
import 'package:lesson1/src/ui/view/compass.dart';
import 'package:lesson1/src/ui/view/dashboard.dart';
import 'package:lesson1/src/ui/widget/drawer.dart';
import 'package:lesson1/src/ui/view/home.dart';
import 'package:lesson1/src/ui/view/notifications.dart';
import 'package:lesson1/src/ui/view/settings.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key, required this.view});
  final Widget view;

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int _currentIndex = 0;

  static const _viewList = <Widget>[HomeView(), DashboardView(), CompassView(), NotificationsView(), SettingsView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
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
      body: Center(child: _viewList.elementAt(_currentIndex)),
      drawer: const Drawer(
        child: DrawerView(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.compass_calibration_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "")
        ],
      ),
    );
  }
}
