import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.crypto,
  });
  final Crypto crypto;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 16),
              child: CircleAvatar(
                radius: 32,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${crypto.value}",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$${crypto.convertedValSmall}",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$${crypto.convertedValBig}",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${crypto.percentage > 0 ? "+" : ''}${crypto.percentage}%",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: crypto.percentage != 0
                            ? crypto.percentage > 0
                                ? Colors.green
                                : Colors.red
                            : Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Crypto {
  const Crypto(
    this.name,
    this.value,
    this.convertedValSmall,
    this.convertedValBig,
    this.percentage,
  );
  final String name;
  final double value, convertedValSmall, convertedValBig, percentage;
}
