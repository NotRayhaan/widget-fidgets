import 'package:flutter/material.dart';

class MyBackground extends StatelessWidget {
  const MyBackground({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: 370,
        height: MediaQuery.sizeOf(context).height * 0.8,
        decoration:
            const BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.only(topLeft: Radius.circular(100))),
        child: Padding(
          padding: const EdgeInsets.only(left: 12, top: 12),
          child: Container(
              decoration: const BoxDecoration(
                  color: Colors.indigoAccent, borderRadius: BorderRadius.only(topLeft: Radius.circular(100))),
              child: child),
        ),
      ),
    );
  }
}
