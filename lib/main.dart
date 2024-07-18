import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vuxkhiff/widgets/about_block.dart';
import 'package:vuxkhiff/widgets/intro_block.dart';
import 'package:vuxkhiff/widgets/sticky_header.dart';

void main() {
  runApp(const VxhfWeb());
}

class VxhfWeb extends StatelessWidget {
  const VxhfWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Vuxkhiff',
      home: VxhfStartPage(),
    );
  }
}

class VxhfStartPage extends StatefulWidget {
  const VxhfStartPage({super.key});

  @override
  State<VxhfStartPage> createState() => _VxhfStartPageState();
}

class _VxhfStartPageState extends State<VxhfStartPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          IntroBlock(),
          StickyHeader(),
          AboutBlock(),
        ],
      ),
    );
  }
}
