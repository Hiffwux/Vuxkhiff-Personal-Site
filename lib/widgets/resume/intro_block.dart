import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter_svg/svg.dart";
import "package:google_fonts/google_fonts.dart";
import "package:vuxkhiff/widgets/versatile/sliver_layout_wrap.dart";
import "package:vuxkhiff/widgets/versatile/stack_wrap.dart";
import "package:vuxkhiff/widgets/versatile/vuxkille_mark_stack_block.dart";

class IntroBlock extends StatelessWidget {
  const IntroBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverLayoutWrap(
        desktop: StackWrap(color: Colors.black,children: [
          const VuxkilleMarkStackBlock(
            date: '1107',
            year: '2024',
            time: '1440',
            numOfPage: '0001',
            color: Colors.white,
          ),

          ///Слой метка

          ///
          ///Слой макет
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ///1 пустой блок
                const Expanded(
                  flex: 1,
                  child: SizedBox.shrink(),
                ),

                ///блок с рисунком
                Expanded(
                  flex: 6,
                  child: Row(
                    children: [
                      const Expanded(flex: 5, child: SizedBox.shrink()),
                      Expanded(
                          flex: 2,
                          child: SvgPicture.asset(
                            'svg/killer_start_img.svg',
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                            height: double.infinity,
                          )),
                    ],
                  ),
                ),

                ///блок с логотипом
                Expanded(
                  flex: 2,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: SvgPicture.asset(
                            'svg/logo_main.svg',
                            fit: BoxFit.fitWidth,
                            height: double.infinity,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(
                              flex: 2,
                              child: SizedBox.shrink(),
                            ),
                            Expanded(
                              flex: 1,
                              child: FittedBox(
                                  fit: BoxFit.fitHeight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'РЕЗЮМЕ',
                                      style: GoogleFonts.inter(
                                          color: Colors.white, fontSize: 16 * ((MediaQuery.of(context).size.width / MediaQuery.of(context).size.height))),
                                    ),
                                  )),
                            ),
                            Expanded(
                              flex: 1,
                              child: FittedBox(
                                fit: BoxFit.fitHeight,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'ПОРТФОЛИО',
                                    style:
                                        GoogleFonts.inter(color: Colors.white, fontSize: 16 * ((MediaQuery.of(context).size.width / MediaQuery.of(context).size.height))),
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
                              flex: 2,
                              child: SizedBox.shrink(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                ///2 пустой блок
                const Expanded(
                  flex: 1,
                  child: SizedBox.shrink(),
                ),
              ],
            ),
          )

          ///
        ],),
        mobile: StackWrap(color: Colors.black,children: [
          ///слой метка
          const VuxkilleMarkStackBlock(
            date: '1107',
            year: '2024',
            time: '1440',
            numOfPage: '0001',
            color: Colors.white,
          ),

          ///
          ///слой макет
          Padding(
            padding: const EdgeInsets.all(60),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: SvgPicture.asset(
                    'svg/killer_start_img.svg',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    width: double.infinity,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: SvgPicture.asset(
                            'svg/logo_main.svg',
                            fit: BoxFit.fitWidth,
                            height: double.infinity,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'РЕЗЮМЕ',
                                style: GoogleFonts.inter(color: Colors.white, fontSize: 16 * ((MediaQuery.of(context).size.width / MediaQuery.of(context).size.height))),
                              ),
                              Text(
                                'ПОРТФОЛИО',
                                style: GoogleFonts.inter(color: Colors.white, fontSize: 16 * ((MediaQuery.of(context).size.width / MediaQuery.of(context).size.height))),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )

          ///
        ]));
  }
}
