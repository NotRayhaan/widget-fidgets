import 'package:flutter/material.dart';
import 'package:lesson1/src/ui/widget/textform.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key, this.register});
  final bool? register;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const MyTextForm(
              labelText: "NAME",
            ),
            if (register ?? false)
              const MyTextForm(
                labelText: "EMAIL",
              ),
            const MyTextForm(
              labelText: "PASSWORD",
              obscureText: true,
            ),
          ]
              .map((e) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: e,
                  ))
              .toList()),
    );
  }
}
