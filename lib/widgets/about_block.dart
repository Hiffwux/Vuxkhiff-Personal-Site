import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutBlock extends StatelessWidget {
  const AboutBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverLayoutBuilder(
        builder: (BuildContext context, SliverConstraints s_constrs) {
      if (s_constrs.crossAxisExtent >= 1000) {
        return SliverToBoxAdapter(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '1507',
                              style: TextStyle(
                                  fontFamily: 'Vuxkille', color: Colors.black),
                            ),
                            Text(
                              '2024',
                              style: TextStyle(
                                  fontFamily: 'Vuxkille', color: Colors.black),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '0902',
                              style: TextStyle(
                                  fontFamily: 'Vuxkille', color: Colors.black),
                            ),
                            Text(
                              '0002',
                              style: TextStyle(
                                  fontFamily: 'Vuxkille', color: Colors.black),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0, right: 60, top: 60),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: FittedBox(
                                        alignment: Alignment.topLeft,
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                          'О СЕБЕ',
                                          style: GoogleFonts.inter(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                    const Expanded(child: SizedBox.shrink(), flex: 2,)
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  'Привет. Меня зовут Данил и я графический дизайнер.\n'
                                  'Крайне нравится делать иллюстрации, готов осуществлять дерзкие и броские идеи в форме типографики и web-дизайна. '
                                  '\nЕсть опыт в программировании и 3D-моделировании.\n'
                                  '\n'
                                  'ПЕРЕПОЛНЕН ЭМПАТИЕЙ КО ВСЕМУ.',
                                  textScaler: MediaQuery.of(context)
                                      .textScaler
                                      .clamp(
                                          maxScaleFactor: 1,
                                          minScaleFactor: 0.5),
                                  style: GoogleFonts.inter(fontSize: 24),
                                ),
                              ),

                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 4,
                                  child: SvgPicture.asset(
                                'svg/killer_start_img.svg',
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                                height: double.infinity,
                              )),
                              Expanded(flex: 3,child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: SvgPicture.asset(
                                  'svg/about_graphic_1.svg',
                                  fit: BoxFit.fill,
                                  alignment: Alignment.topLeft,
                                  height: double.infinity,
                                ),
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        );
      } else {
        return const SliverToBoxAdapter(child: Text('data2'));
      }
    });
  }
}
