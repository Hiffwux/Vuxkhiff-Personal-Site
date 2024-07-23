import 'package:flutter/material.dart';

class StackWrap extends StatelessWidget {
  final Color? color;
  final List<Widget> children;
  const StackWrap({super.key, required this.children, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: color,
          child: Stack(
            children: children,
          )),
    );
  }
}
