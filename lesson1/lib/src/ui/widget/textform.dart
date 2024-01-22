import 'package:flutter/material.dart';

class MyTextForm extends StatelessWidget {
  const MyTextForm({super.key, required this.labelText, this.helpText});
  final String labelText;
  final String? helpText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText),
        Container(
          decoration: BoxDecoration(color: Colors.blueAccent.shade100, borderRadius: BorderRadius.circular(12)),
          child: TextFormField(
            initialValue: helpText,
            decoration: const InputDecoration(contentPadding: EdgeInsets.all(8), border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
