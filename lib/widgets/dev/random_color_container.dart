import 'package:flutter/material.dart';
import 'dart:math' as math;

class RCC extends StatelessWidget {
  final int flex;
  const RCC({super.key, required this.flex});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
      ),
    );
  }
}
