import 'package:flutter/material.dart';


class Box extends StatelessWidget {
  final child;
  const Box({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: child),
        decoration: BoxDecoration(
        color: Color(0xFFF5F7FA),
        borderRadius: BorderRadius.circular(12),
    )
    );
    }
}
