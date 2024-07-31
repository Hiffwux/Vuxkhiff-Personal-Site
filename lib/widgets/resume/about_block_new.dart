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
    final scroll = ScrollController();
    return SliverLayoutWrap(
        desktop: StackWrap(color: Colors.white,children: [
          const VuxkilleMarkStackBlock(date: '1507', year: '2024', time: '0902', numOfPage: '0002'),
          Padding(
            padding: const EdgeInsets.only(top: 60.0, right: 60, left: 60, bottom: 5),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('О СЕБЕ', style: GoogleFonts.inter(fontSize: 64 * ((MediaQuery.of(context).size.width / MediaQuery.of(context).size.height)), color: Colors.black, fontWeight: FontWeight.w600), textScaler: MediaQuery.of(context)
                          .textScaler
                          .clamp(maxScaleFactor: 1, minScaleFactor: 0.5),),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 55.0),
                        child: Text(
                          'Привет. Меня зовут Данил и я графический дизайнер.\n'
                              'Крайне нравится делать иллюстрации, готов осуществлять дерзкие и броские идеи в форме типографики и web-дизайна. '
                              '\nЕсть опыт в программировании и 3D-моделировании.\n'
                              '\n'
                              'ПЕРЕПОЛНЕН ЭМПАТИЕЙ КО ВСЕМУ.',
                          style: GoogleFonts.inter(fontSize: 16 * ((MediaQuery.of(context).size.width / MediaQuery.of(context).size.height))),
                        ),
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
            Expanded(
              flex: 2,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text('О СЕБЕ', style: GoogleFonts.inter(fontSize: 64 * ((MediaQuery.of(context).size.width / MediaQuery.of(context).size.height)), color: Colors.black, fontWeight: FontWeight.w600), textScaler: MediaQuery.of(context)
                  .textScaler
                  .clamp(maxScaleFactor: 1, minScaleFactor: 0.5),),
              ),
            ),
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
            Expanded(
              flex: 4,
              child: Theme(
                data: ThemeData(
                    scrollbarTheme: ScrollbarThemeData(
                      trackVisibility: WidgetStateProperty.all(true),
                      thumbVisibility: WidgetStateProperty.all(true),
                      trackColor: WidgetStateProperty.all(Colors.white),
                      thumbColor: WidgetStateProperty.all(Colors.black),
                      trackBorderColor: WidgetStateProperty.all(Colors.transparent),
                      thickness: WidgetStateProperty.all(4),
                      radius: Radius.zero,
                      crossAxisMargin: 0,
                      mainAxisMargin: 0,
                    )
                ),
                child: SingleChildScrollView(
                  child: Text(
                    'Привет. Меня зовут Данил и я графический дизайнер.\n'
                        'Крайне нравится делать иллюстрации, готов осуществлять дерзкие и броские идеи в форме типографики и web-дизайна. '
                        '\nЕсть опыт в программировании и 3D-моделировании.\n'
                        '\n'
                        'ПЕРЕПОЛНЕН ЭМПАТИЕЙ КО ВСЕМУ.',
                    style: GoogleFonts.inter(fontSize: 24 * ((MediaQuery.of(context).size.width / MediaQuery.of(context).size.height))),
                  ),
                ),
              ),
            )],
          ),)
        ]));
  }
}

/*ShaderMask(
                  shaderCallback: (Rect rect) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.transparent, Colors.transparent, Colors.white],
                      stops: [0.0, 0.0, 0.9, 1.0],
                    ).createShader(rect);
                  },
                  blendMode: BlendMode.dstOut,
                  child:*/