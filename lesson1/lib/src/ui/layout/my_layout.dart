import 'package:flutter/material.dart';
import 'package:lesson1/src/ui/widget/background.dart';
import 'package:lesson1/src/ui/widget/form.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: MyBackground(color: Colors.blueAccent, child: MyForm())),
    );
    ;
  }
}
