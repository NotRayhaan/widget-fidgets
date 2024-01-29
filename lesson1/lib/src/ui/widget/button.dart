import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.onPressed, required this.label, this.loading});
  final VoidCallback? onPressed;
  final String label;
  final bool? loading;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: loading == true ? null : onPressed,
      style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(40),
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: loading == true
            ? const CircularProgressIndicator()
            : Text(
                label,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
      ),
    );
  }
}
