import 'package:flutter/material.dart';
import 'package:lesson1/src/ui/widget/button.dart';
import 'package:lesson1/src/ui/widget/textform.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const MyTextForm(
              labelText: "NAME",
            ),
            const MyTextForm(
              labelText: "PASSWORD",
            ),
            MyButton(
              label: "Log in",
              onPressed: () {},
            )
          ]
              .map((e) => Padding(
                    padding: const EdgeInsets.all(4),
                    child: e,
                  ))
              .toList()),
    );
  }
}
