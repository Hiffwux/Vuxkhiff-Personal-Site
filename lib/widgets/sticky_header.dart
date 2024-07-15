import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter_svg/svg.dart";
import "package:google_fonts/google_fonts.dart";

class StickyHeader extends StatelessWidget {
  const StickyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverLayoutBuilder(builder: (BuildContext context, SliverConstraints s_constrs) {
      if (s_constrs.crossAxisExtent >= 700) {
        return SliverAppBar(
          toolbarHeight: MediaQuery.of(context).size.height / 12,
          backgroundColor: Colors.black,
          pinned: true,
          title: SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset("svg/logo_main.svg", fit: BoxFit.fitWidth,)
            ),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Резюме', style: GoogleFonts.inter(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),)
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Портфолио', style: GoogleFonts.inter(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),)
            ),
          ],
        );
      } else {
        return SliverAppBar(
          toolbarHeight: MediaQuery.of(context).size.height / 12,
          backgroundColor: Colors.black,
          pinned: true,
          title: SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset("svg/logo_main.svg", fit: BoxFit.fitWidth,)
            ),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('yt Резюме', style: GoogleFonts.inter(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),)
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('yt Портфолио', style: GoogleFonts.inter(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),)
            ),
          ],
        );
      }
    });
  }
}

/*return SliverAppBar(
      toolbarHeight: MediaQuery.of(context).size.height / 12,
      backgroundColor: Colors.black,
      pinned: true,
      title: SizedBox(
        width: MediaQuery.of(context).size.width / 6,
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset("svg/logo_main.svg", fit: BoxFit.fitWidth,)
        ),
      ),
      actions: [
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Резюме', style: GoogleFonts.inter(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),)
        ),
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Портфолио', style: GoogleFonts.inter(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),)
        ),
      ],
    );*/