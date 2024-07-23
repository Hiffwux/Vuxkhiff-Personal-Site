import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vuxkhiff/widgets/versatile/sliver_layout_wrap.dart';
import 'package:vuxkhiff/widgets/versatile/stack_wrap.dart';
import 'package:vuxkhiff/widgets/versatile/vuxkille_mark_stack_block.dart';

class AboutBlockNew extends StatelessWidget {
  const AboutBlockNew({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverLayoutWrap(
        desktop: StackWrap(color: Colors.white,children: [
          const VuxkilleMarkStackBlock(date: '1507', year: '2024', time: '0902', numOfPage: '0002'),
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('О СЕБЕ', style: GoogleFonts.inter(fontSize: 100, color: Colors.black, fontWeight: FontWeight.w600), textScaler: MediaQuery.of(context)
                          .textScaler
                          .clamp(maxScaleFactor: 1, minScaleFactor: 0.5),),
                      Text(
                        'Привет. Меня зовут Данил и я графический дизайнер.\n'
                            'Крайне нравится делать иллюстрации, готов осуществлять дерзкие и броские идеи в форме типографики и web-дизайна. '
                            '\nЕсть опыт в программировании и 3D-моделировании.\n'
                            '\n'
                            'ПЕРЕПОЛНЕН ЭМПАТИЕЙ КО ВСЕМУ.',
                        textScaler: MediaQuery.of(context)
                            .textScaler
                            .clamp(maxScaleFactor: 1, minScaleFactor: 0.5),
                        style: GoogleFonts.inter(fontSize: 24),
                      ),
                    ],
                  ),
                ),
                Expanded(child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
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
                      Expanded(
                          flex: 3,
                          child: Padding(
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
                ),)
              ],
            ),
          )
        ],),
        mobile: StackWrap(children: [
          const VuxkilleMarkStackBlock(date: '1507', year: '2024', time: '0902', numOfPage: '0002'),
          Padding(padding: const EdgeInsets.all(60),child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('О СЕБЕ', style: GoogleFonts.inter(fontSize: 100, color: Colors.black, fontWeight: FontWeight.w600), textScaler: MediaQuery.of(context)
              .textScaler
              .clamp(maxScaleFactor: 1, minScaleFactor: 0.5),),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: SvgPicture.asset(
                        'svg/killer_start_img.svg',
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        height: double.infinity,
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: SvgPicture.asset(
                            'svg/about_graphic_1.svg',
                            fit: BoxFit.fill,
                            alignment: Alignment.topLeft,
                            height: double.infinity,
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Text(
              'Привет. Меня зовут Данил и я графический дизайнер.\n'
                  'Крайне нравится делать иллюстрации, готов осуществлять дерзкие и броские идеи в форме типографики и web-дизайна. '
                  '\nЕсть опыт в программировании и 3D-моделировании.\n'
                  '\n'
                  'ПЕРЕПОЛНЕН ЭМПАТИЕЙ КО ВСЕМУ.',
              textScaler: MediaQuery.of(context)
                  .textScaler
                  .clamp(maxScaleFactor: 1, minScaleFactor: 0.5),
              style: GoogleFonts.inter(fontSize: 24),
            )],
          ),)
        ]));
  }
}
