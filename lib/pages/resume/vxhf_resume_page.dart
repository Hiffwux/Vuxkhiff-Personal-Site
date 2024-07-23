import 'package:flutter/material.dart';
import 'package:vuxkhiff/widgets/resume/about_block.dart';
import 'package:vuxkhiff/widgets/resume/about_block_new.dart';
import 'package:vuxkhiff/widgets/resume/intro_block.dart';
import 'package:vuxkhiff/widgets/resume/skills_block.dart';
import 'package:vuxkhiff/widgets/resume/sticky_header.dart';

class VxhfResumePage extends StatefulWidget {
  const VxhfResumePage({super.key});

  @override
  State<VxhfResumePage> createState() => _VxhfResumePageState();
}

class _VxhfResumePageState extends State<VxhfResumePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          IntroBlock(),
          StickyHeader(),
          AboutBlockNew(),
          SkillsBlock(),
        ],
      ),
    );
  }
}