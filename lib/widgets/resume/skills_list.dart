import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vuxkhiff/widgets/dev/random_color_container.dart';

class SkillsList extends StatelessWidget {
  const SkillsList({super.key});

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints s_constrs) {
          if (s_constrs.maxWidth >= 600) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: content(context)
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: content(context)
              ),
            );
          }
        });
  }

  Widget nameOfSkill(String text) {
    return Expanded(flex: 1, child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: FittedBox(
        fit: BoxFit.fitHeight,
        alignment: Alignment.center,
        child: Text(text, style: GoogleFonts.inter(color: Colors.white, fontWeight: FontWeight.w600)),
      ),
    ));
  }

  List<Widget> content(BuildContext context){
    return [
      //первая строка: навык "хорошо и отлично"
      FittedBox(
        fit: BoxFit.fitHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Illustrator ', style: GoogleFonts.inter(fontSize: 32 * (MediaQuery.of(context).size.width / MediaQuery.of(context).size.height), color: Colors.white, fontWeight: FontWeight.w600)),
            Text('Figma ', style: GoogleFonts.inter(fontSize: 32 * (MediaQuery.of(context).size.width / MediaQuery.of(context).size.height), color: Colors.white, fontWeight: FontWeight.w600)),
            Text('Photoshop ', style: GoogleFonts.inter(fontSize: 32 * (MediaQuery.of(context).size.width / MediaQuery.of(context).size.height), color: Colors.white, fontWeight: FontWeight.w600)),
          ],
        ),
      ),

      //вторая строка: навык "среднее"
      FittedBox(
        fit: BoxFit.fitHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('InDesign ', style: GoogleFonts.inter(fontSize: 24 * (MediaQuery.of(context).size.width / MediaQuery.of(context).size.height), color: Colors.white, fontWeight: FontWeight.w600)),
            Text('XD ', style: GoogleFonts.inter(fontSize: 24 * (MediaQuery.of(context).size.width / MediaQuery.of(context).size.height), color: Colors.white, fontWeight: FontWeight.w600)),
            Text('Blender ', style: GoogleFonts.inter(fontSize: 24 * (MediaQuery.of(context).size.width / MediaQuery.of(context).size.height), color: Colors.white, fontWeight: FontWeight.w600)),
            Text('Godot ', style: GoogleFonts.inter(fontSize: 24 * (MediaQuery.of(context).size.width / MediaQuery.of(context).size.height), color: Colors.white, fontWeight: FontWeight.w600)),
            Text('Valve Hammer Editor ', style: GoogleFonts.inter(fontSize: 24 * (MediaQuery.of(context).size.width / MediaQuery.of(context).size.height), color: Colors.white, fontWeight: FontWeight.w600)),
            Text('Substance Painter ', style: GoogleFonts.inter(fontSize: 24 * (MediaQuery.of(context).size.width / MediaQuery.of(context).size.height), color: Colors.white, fontWeight: FontWeight.w600)),
          ],
        ),
      ),

      //третья строка: навык "минимально"
      FittedBox(
        fit: BoxFit.fitHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Dart ', style: GoogleFonts.inter(fontSize: 16 * (MediaQuery.of(context).size.width / MediaQuery.of(context).size.height), color: Colors.white, fontWeight: FontWeight.w600)),
            Text('Python ', style: GoogleFonts.inter(fontSize: 16 * (MediaQuery.of(context).size.width / MediaQuery.of(context).size.height), color: Colors.white, fontWeight: FontWeight.w600)),
            Text('Kotlin ', style: GoogleFonts.inter(fontSize: 16 * (MediaQuery.of(context).size.width / MediaQuery.of(context).size.height), color: Colors.white, fontWeight: FontWeight.w600)),
            Text('Krita ', style: GoogleFonts.inter(fontSize: 16 * (MediaQuery.of(context).size.width / MediaQuery.of(context).size.height), color: Colors.white, fontWeight: FontWeight.w600)),
            Text('Spine ', style: GoogleFonts.inter(fontSize: 16 * (MediaQuery.of(context).size.width / MediaQuery.of(context).size.height), color: Colors.white, fontWeight: FontWeight.w600)),
            Text('Unity ', style: GoogleFonts.inter(fontSize: 16 * (MediaQuery.of(context).size.width / MediaQuery.of(context).size.height), color: Colors.white, fontWeight: FontWeight.w600)),
            Text('After Effects ', style: GoogleFonts.inter(fontSize: 16 * (MediaQuery.of(context).size.width / MediaQuery.of(context).size.height), color: Colors.white, fontWeight: FontWeight.w600)),
            Text('Animate ', style: GoogleFonts.inter(fontSize: 16 * (MediaQuery.of(context).size.width / MediaQuery.of(context).size.height), color: Colors.white, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    ];
  }

}
