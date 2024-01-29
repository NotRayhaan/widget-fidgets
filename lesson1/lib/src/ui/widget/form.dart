import 'package:flutter/material.dart';
import 'package:lesson1/src/ui/widget/button.dart';
import 'package:lesson1/src/ui/widget/textform.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key, this.register, required this.buttonLabel, required this.submit});
  final bool? register;
  final String buttonLabel;
  final VoidCallback submit;

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  void mockSubmit() async {
    await Future.delayed(const Duration(seconds: 1));
    loading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const MyTextForm(
              labelText: "NAME",
            ),
            if (widget.register ?? false)
              const MyTextForm(
                labelText: "EMAIL",
                email: true,
              ),
            MyTextForm(
              labelText: "PASSWORD",
              obscureText: true,
              register: widget.register,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: MyButton(
                label: widget.buttonLabel,
                loading: loading,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      loading = true;
                    });
                    mockSubmit();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Errors in your form")));
                  }
                },
              ),
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
