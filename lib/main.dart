import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const VxhfWeb());
}

class VxhfWeb extends StatelessWidget {
  const VxhfWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Vuxkhiff',
      home: VxhfStartPage(),
    );
  }
}

class VxhfStartPage extends StatefulWidget {
  const VxhfStartPage({super.key});

  @override
  State<VxhfStartPage> createState() => _VxhfStartPageState();
}

class _VxhfStartPageState extends State<VxhfStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.black,
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
                                '1107',
                                style: TextStyle(
                                    fontFamily: 'Vuxkille',
                                    color: Colors.white),
                              ),
                              Text(
                                '2024',
                                style: TextStyle(
                                    fontFamily: 'Vuxkille',
                                    color: Colors.white),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '1440',
                                style: TextStyle(
                                    fontFamily: 'Vuxkille',
                                    color: Colors.white),
                              ),
                              Text(
                                '0001',
                                style: TextStyle(
                                    fontFamily: 'Vuxkille',
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Expanded(
                            flex: 1,
                            child: SizedBox.shrink(),
                          ),
                          Expanded(
                            flex: 6,
                            child: Row(
                              children: [
                                const Expanded(
                                    flex: 5, child: SizedBox.shrink()),
                                Expanded(
                                    flex: 2,
                                    child: SvgPicture.asset(
                                      'svg/killer_start_img.svg',
                                      fit: BoxFit.fitWidth,
                                      alignment: Alignment.topLeft,
                                      height: double.infinity,
                                    )),
                                //SizedBox.shrink(),
                                //SvgPicture.asset('svg/killer_start_img.svg')
                              ],
                            ),
                          ),
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
                                      padding:
                                          const EdgeInsets.only(right: 20.0),
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
                                                  padding:
                                                      const EdgeInsets.only(
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
                          const Expanded(
                            flex: 1,
                            child: SizedBox.shrink(),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ),
          SliverAppBar(
            toolbarHeight: MediaQuery.of(context).size.height / 12,
            backgroundColor: Colors.black,
            pinned: true,
            title: SizedBox(
              height: MediaQuery.of(context).size.height / 12,
              child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'VUXKHIFF',
                      style: GoogleFonts.inter(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
