import 'package:flutter/material.dart';

class TransferCard extends StatelessWidget {
  const TransferCard({super.key, required this.transfer});
  final Transfer transfer;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade50,
      child: ListTile(
        title: Text(
          transfer.name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text("\$${transfer.value}", style: Theme.of(context).textTheme.titleMedium),
              ),
              transfer.outgoing
                  ? const Icon(
                      Icons.east,
                      color: Colors.red,
                    )
                  : const Icon(Icons.west, color: Colors.green)
            ]),
            Text(transfer.date, style: Theme.of(context).textTheme.bodyLarge)
          ],
        ),
      ),
    );
  }
}

class Transfer {
  const Transfer(this.value, this.date, this.name, this.outgoing);
  final String name, date;
  final double value;
  final bool outgoing;
}
