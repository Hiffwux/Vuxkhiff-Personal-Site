import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:vuxkhiff/pages/resume/vxhf_resume_page.dart';

void main() {
  runApp(const VxhfWeb());
}

class VxhfWeb extends StatelessWidget {
  const VxhfWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          trackVisibility: WidgetStateProperty.all(true),
          thumbVisibility: WidgetStateProperty.all(true),
          trackColor: WidgetStateProperty.all(Colors.black),
          thumbColor: WidgetStateProperty.all(Colors.white),
          trackBorderColor: WidgetStateProperty.all(Colors.transparent),
          thickness: WidgetStateProperty.all(4),
          radius: Radius.zero,
          crossAxisMargin: 0,
          mainAxisMargin: 0,
        )
      ),
      scrollBehavior: const MaterialScrollBehavior()
          .copyWith(dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},
      ),
      title: 'Vuxkhiff',
      home: const VxhfResumePage(),
    );
  }
}

