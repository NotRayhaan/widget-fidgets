import 'package:flutter/material.dart';

class MyTextForm extends StatelessWidget {
  const MyTextForm({super.key, required this.labelText, this.helpText, this.obscureText});
  final String labelText;
  final String? helpText;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white70),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Container(
            decoration: BoxDecoration(color: Colors.indigoAccent.shade100, borderRadius: BorderRadius.circular(16)),
            child: TextFormField(
              style: const TextStyle(color: Colors.white70),
              initialValue: helpText,
              decoration: const InputDecoration(contentPadding: EdgeInsets.all(8), border: InputBorder.none),
              obscureText: obscureText ?? false,
            ),
          ),
        ),
      ],
    );
  }
}
