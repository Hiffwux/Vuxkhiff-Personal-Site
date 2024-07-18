import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter_svg/svg.dart";
import "package:google_fonts/google_fonts.dart";

class IntroBlock extends StatelessWidget {
  const IntroBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverLayoutBuilder(
        builder: (BuildContext context, SliverConstraints s_constrs) {
      if (s_constrs.crossAxisExtent >= 1000) {
        return SliverToBoxAdapter(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: Stack(
                children: [
                  ///Слой метка
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '1107',
                              style: TextStyle(
                                  fontFamily: 'Vuxkille', color: Colors.white),
                            ),
                            Text(
                              '2024',
                              style: TextStyle(
                                  fontFamily: 'Vuxkille', color: Colors.white),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '1440',
                              style: TextStyle(
                                  fontFamily: 'Vuxkille', color: Colors.white),
                            ),
                            Text(
                              '0001',
                              style: TextStyle(
                                  fontFamily: 'Vuxkille', color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

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
                              //SizedBox.shrink(),
                              //SvgPicture.asset('svg/killer_start_img.svg')
                            ],
                          ),
                        ),

                        ///блок с логотипом
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0),
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
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            left: BorderSide(
                                                width: 5,
                                                color: Colors.white))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Expanded(
                                          flex: 3,
                                          child: SizedBox.shrink(),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: FittedBox(
                                              fit: BoxFit.fitHeight,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10.0),
                                                child: Text(
                                                  'РЕЗЮМЕ',
                                                  style: GoogleFonts.inter(
                                                      color: Colors.white),
                                                ),
                                              )),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: FittedBox(
                                            fit: BoxFit.fitHeight,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0),
                                              child: Text(
                                                'ПОРТФОЛИО',
                                                style: GoogleFonts.inter(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Expanded(
                                          flex: 3,
                                          child: SizedBox.shrink(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                ],
              )),
        );
      } else {
        return SliverToBoxAdapter(
            child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: Stack(
            children: [
              ///слой метка
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1107',
                          style: TextStyle(
                              fontFamily: 'Vuxkille', color: Colors.white),
                        ),
                        Text(
                          '2024',
                          style: TextStyle(
                              fontFamily: 'Vuxkille', color: Colors.white),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1440',
                          style: TextStyle(
                              fontFamily: 'Vuxkille', color: Colors.white),
                        ),
                        Text(
                          '0001',
                          style: TextStyle(
                              fontFamily: 'Vuxkille', color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
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
                        child: Row(
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
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          left:
                                          BorderSide(width: 3, color: Colors.white))),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Expanded(
                                        flex: 3,
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
                                                    color: Colors.white),
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
                                              GoogleFonts.inter(color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Expanded(
                                        flex: 3,
                                        child: SizedBox.shrink(),
                                      ),
                                    ],
                                  ),
                                ),
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
            ],
          ),
        ));
      }
    });
  }
}
