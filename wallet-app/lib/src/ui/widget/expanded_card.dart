import 'package:flutter/material.dart';
import 'package:wallet_app/src/ui/view/home.dart';

class ExpandedCard extends StatefulWidget {
  const ExpandedCard({super.key, required this.myBalance});
  final Balance myBalance;

  @override
  State<ExpandedCard> createState() => _ExpandedCardState();
}

class _ExpandedCardState extends State<ExpandedCard> {
  final ExpansionTileController controller = ExpansionTileController();
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Column(
        children: [
          ExpansionTile(
            onExpansionChanged: (expansionsState) {
              setState(() {
                isExpanded = expansionsState;
              });
            },
            controller: controller,
            trailing: Icon(null),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            controlAffinity: ListTileControlAffinity.platform,
            tilePadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Text(
                "Total Balance",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text("\$${myBalance.value}",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold)),
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: myBalance.percentage != 0
                            ? myBalance.percentage > 0
                                ? Colors.green
                                : Colors.red
                            : Colors.grey),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                      child: Text(
                        "${myBalance.percentage > 0 ? "+" : ''}${myBalance.percentage}%",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: Colors.white, fontWeight: FontWeight.w300),
                      ),
                    )),
              ],
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 12),
                child: Text(
                  "Scheduled Transfers",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  child: ListView(
                    children: myBalance.children,
                  ),
                ),
              )
            ],
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
                controller.isExpanded ? controller.collapse() : controller.expand();
              },
              child: Icon(
                isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                size: 48,
                color: Colors.black54,
              ))
        ],
      ),
    );
  }
}

class Balance {
  const Balance(this.value, this.percentage, this.children);
  final List<Widget> children;
  final double value, percentage;
}
