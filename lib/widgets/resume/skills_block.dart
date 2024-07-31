import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_svg/svg.dart";
import "package:google_fonts/google_fonts.dart";
import "package:vuxkhiff/widgets/dev/random_color_container.dart";
import "package:vuxkhiff/widgets/resume/skills_list.dart";
import "package:vuxkhiff/widgets/versatile/sliver_layout_wrap.dart";
import "package:vuxkhiff/widgets/versatile/stack_wrap.dart";
import "package:vuxkhiff/widgets/versatile/vuxkille_mark_stack_block.dart";

class SkillsBlock extends StatelessWidget {
  const SkillsBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverLayoutWrap(
        desktop: StackWrap(color: Colors.black, children: [
          const VuxkilleMarkStackBlock(
            date: '1507',
            year: '2024',
            time: '0902',
            numOfPage: '0003',
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('НАВЫКИ', style: GoogleFonts.inter(fontSize: 64 * ((MediaQuery.of(context).size.width / MediaQuery.of(context).size.height)), color: Colors.white, fontWeight: FontWeight.w600), textScaler: MediaQuery.of(context)
                    .textScaler
                    .clamp(maxScaleFactor: 1, minScaleFactor: 0.5),),
                const Expanded(flex: 2,child: SizedBox.shrink()),
                const Expanded(flex: 3, child: SkillsList())
              ],
            ),
          )
        ]),
        mobile: StackWrap(color: Colors.black, children: [
          const VuxkilleMarkStackBlock(
            date: '1507',
            year: '2024',
            time: '0902',
            numOfPage: '0003',
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.all(60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('НАВЫКИ', style: GoogleFonts.inter(fontSize: 64 * ((MediaQuery.of(context).size.width / MediaQuery.of(context).size.height)), color: Colors.white, fontWeight: FontWeight.w600), textScaler: MediaQuery.of(context)
                    .textScaler
                    .clamp(maxScaleFactor: 1, minScaleFactor: 0.5),),
                const Expanded(flex: 2,child: SizedBox.shrink()),
                Expanded(flex: 3, child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: SizedBox(child: SkillsList(), width: MediaQuery.of(context).size.width,),
                ))
              ],
            ),
          )
        ]));
  }
}
