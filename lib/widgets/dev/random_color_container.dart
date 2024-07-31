import 'package:flutter/material.dart';
import 'dart:math' as math;

class RCC extends StatelessWidget {
  final int? flex;
  const RCC({super.key, this.flex});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Container(
        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
      ),
    );
  }
}
