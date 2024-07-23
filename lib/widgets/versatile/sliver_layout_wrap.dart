import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SliverLayoutWrap extends StatelessWidget {
  final Widget desktop;
  final Widget mobile;
  const SliverLayoutWrap({super.key, required this.desktop, required this.mobile});

  @override
  Widget build(BuildContext context) {
    return SliverLayoutBuilder(
        builder: (BuildContext context, SliverConstraints s_constrs) {
          if (s_constrs.crossAxisExtent >= 1000) {
            return desktop;
          } else {
            return mobile;
          }
        });
  }
}
