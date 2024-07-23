import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:vuxkhiff/widgets/dev/random_color_container.dart";
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
              children: [
                Expanded(
                  flex: 4,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: FittedBox(
                          alignment: Alignment.topLeft,
                          fit: BoxFit.fitWidth,
                          child: Text(
                            'НАВЫКИ',
                            style: GoogleFonts.inter(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: SizedBox.shrink(),
                        flex: 5,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
        mobile: SliverToBoxAdapter(child: SizedBox.shrink()));
  }
}
