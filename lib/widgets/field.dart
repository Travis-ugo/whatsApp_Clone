import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  const Field({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      height: 37,
      decoration: BoxDecoration(
        color: const Color(0xFF2D3333),
        borderRadius: BorderRadius.circular(60),
      ),
      child: Center(child: child),
    );
  }
}
