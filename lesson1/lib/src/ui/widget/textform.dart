import 'package:flutter/material.dart';

class MyTextForm extends StatefulWidget {
  const MyTextForm({super.key, required this.labelText, this.helpText, this.obscureText, this.email, this.register});
  final String labelText;
  final String? helpText;
  final bool? obscureText;
  final bool? email;
  final bool? register;

  @override
  State<MyTextForm> createState() => _MyTextFormState();
}

class _MyTextFormState extends State<MyTextForm> {
  bool _hideText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white70),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Required";
              }
              if (widget.obscureText == true && widget.register == true) {
                String passError = "";
                if (!value.contains(RegExp(r'[A-Z]'))) {
                  passError = '$passError\n   * At least one capital letter';
                }
                if (!value.contains(RegExp(r'[0-9]'))) {
                  passError = '$passError\n   * At least one number';
                }
                if (value.length < 8) {
                  passError = '$passError\n   * At least 8 chars long';
                }

                if (passError.isEmpty) {
                  return null;
                }
                return 'Weak password, please add: $passError';
              }

              if (widget.email == true) {
                if (!value.contains(RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
                  return "Invalid email format";
                }
              }

              return null;
            },
            style: const TextStyle(color: Colors.white70),
            initialValue: widget.helpText,
            decoration: InputDecoration(
                suffixIcon: widget.obscureText != null
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            _hideText = !_hideText;
                          });
                        },
                        icon: Icon(_hideText ? Icons.visibility_off : Icons.visibility))
                    : null,
                contentPadding: const EdgeInsets.all(8),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16), borderSide: const BorderSide(color: Colors.transparent)),
                fillColor: Colors.indigoAccent.shade100,
                filled: true),
            obscureText: widget.obscureText != null ? _hideText : false,
          ),
        ),
      ],
    );
  }
}
