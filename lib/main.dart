import 'package:flutter/material.dart';
import 'package:vuxkhiff/pages/resume/vxhf_resume_page.dart';

void main() {
  runApp(const VxhfWeb());
}

class VxhfWeb extends StatelessWidget {
  const VxhfWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Vuxkhiff',
      home: VxhfResumePage(),
    );
  }
}

