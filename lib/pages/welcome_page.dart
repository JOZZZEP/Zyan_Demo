// ignore_for_file: prefer_const_constructors

import 'package:first_app/pages/nav_bar_page.dart';
import 'package:first_app/pages/reg_persornal.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ZYAN BREEDSMAN',
          style: GoogleFonts.kanit(
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.black,
        flexibleSpace: Opacity(
          opacity: 0.6,
          child: Image(
            image: AssetImage("lib/image/farm.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ซื้อ - ขายสินค้าเกษตร',
                      style: GoogleFonts.kanit(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('lib/image/shop.png'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.7),
                                      BlendMode.dstATop),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("เซียนสั่งโลด",
                                        style: GoogleFonts.kanit(
                                          color: Colors.white,
                                          fontSize: 20,
                                          shadows: [
                                            Shadow(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                              offset: Offset(2, 2),
                                              blurRadius: 2,
                                            ),
                                          ],
                                        )),
                                    Text(
                                      "ซื้อ - ขายสินค้าเกษตร",
                                      style: GoogleFonts.kanit(
                                        color: Colors.white,
                                        fontSize: 10,
                                        shadows: [
                                          Shadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            offset: Offset(2, 2),
                                            blurRadius: 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return NavBarHome();
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'ระบบบริหารจัดการฟาร์ม (เลี้ยงโค)',
                      style: GoogleFonts.kanit(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('lib/image/cows.png'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.7),
                                      BlendMode.dstATop),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("Zyan Dairy",
                                        style: GoogleFonts.kanit(
                                          color: Colors.white,
                                          fontSize: 20,
                                          shadows: [
                                            Shadow(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                              offset: Offset(2, 2),
                                              blurRadius: 2,
                                            ),
                                          ],
                                        )),
                                    Text(
                                      "ระบบบริหารจัดการฟาร์มโคนม",
                                      style: GoogleFonts.kanit(
                                        color: Colors.white,
                                        fontSize: 10,
                                        shadows: [
                                          Shadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            offset: Offset(2, 2),
                                            blurRadius: 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('lib/image/beef.png'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.7),
                                      BlendMode.dstATop),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("Zyan Beef",
                                        style: GoogleFonts.kanit(
                                          color: Colors.white,
                                          fontSize: 20,
                                          shadows: [
                                            Shadow(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                              offset: Offset(2, 2),
                                              blurRadius: 2,
                                            ),
                                          ],
                                        )),
                                    Text(
                                      "ระบบบริหารจัดการฟาร์มโคเนื้อ",
                                      style: GoogleFonts.kanit(
                                        color: Colors.white,
                                        fontSize: 10,
                                        shadows: [
                                          Shadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            offset: Offset(2, 2),
                                            blurRadius: 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return RegPersonal();
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'ระบบจัดการน้ำเชื้อ (นักผสมเทียม)',
                      style: GoogleFonts.kanit(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('lib/image/breed.png'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.7),
                                      BlendMode.dstATop),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("Zyan Breedsman",
                                        style: GoogleFonts.kanit(
                                          color: Colors.white,
                                          fontSize: 20,
                                          shadows: [
                                            Shadow(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                              offset: Offset(2, 2),
                                              blurRadius: 2,
                                            ),
                                          ],
                                        )),
                                    Text(
                                      "ระบบสำหรับนักผสมเทียม",
                                      style: GoogleFonts.kanit(
                                        color: Colors.white,
                                        fontSize: 10,
                                        shadows: [
                                          Shadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            offset: Offset(2, 2),
                                            blurRadius: 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return NavBarHome();
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   width: double.maxFinite,
                    //   height: 180,
                    //   child: Card(
                    //     semanticContainer: true,
                    //     clipBehavior: Clip.antiAliasWithSaveLayer,
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(10.0),
                    //     ),
                    //     elevation: 5,
                    //     margin: EdgeInsets.symmetric(vertical: 5),
                    //     child: Container(
                    //       alignment: Alignment.centerLeft,
                    //       padding: const EdgeInsets.all(10.0),
                    //       decoration: BoxDecoration(
                    //         color: Colors.black,
                    //         borderRadius: BorderRadius.circular(10),
                    //         image: DecorationImage(
                    //           image: AssetImage('lib/image/cows.png'),
                    //           colorFilter: ColorFilter.mode(
                    //               Colors.black.withOpacity(0.9),
                    //               BlendMode.dstATop),
                    //           fit: BoxFit.fitWidth,
                    //         ),
                    //       ),
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         mainAxisAlignment: MainAxisAlignment.end,
                    //         children: [
                    //           Text("Zyan Dairy",
                    //               style: GoogleFonts.kanit(
                    //                 color: Colors.white,
                    //                 fontSize: 25,
                    //                 shadows: [
                    //                   Shadow(
                    //                     color: Colors.black.withOpacity(0.5),
                    //                     offset: Offset(2, 2),
                    //                     blurRadius: 2,
                    //                   ),
                    //                 ],
                    //               )),
                    //           Text(
                    //             "ระบบบริหารจัดการฟาร์มโคนม",
                    //             style: GoogleFonts.kanit(
                    //               color: Colors.white,
                    //               fontSize: 15,
                    //               shadows: [
                    //                 Shadow(
                    //                   color: Colors.black.withOpacity(0.5),
                    //                   offset: Offset(2, 2),
                    //                   blurRadius: 2,
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: double.maxFinite,
                    //   height: 180,
                    //   child: Card(
                    //     semanticContainer: true,
                    //     clipBehavior: Clip.antiAliasWithSaveLayer,
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(10.0),
                    //     ),
                    //     elevation: 5,
                    //     margin: EdgeInsets.symmetric(vertical: 5),
                    //     child: Container(
                    //       alignment: Alignment.centerLeft,
                    //       padding: const EdgeInsets.all(10.0),
                    //       decoration: BoxDecoration(
                    //         color: Colors.black,
                    //         borderRadius: BorderRadius.circular(10),
                    //         image: DecorationImage(
                    //           image: AssetImage('lib/image/beef.png'),
                    //           colorFilter: ColorFilter.mode(
                    //               Colors.black.withOpacity(0.9),
                    //               BlendMode.dstATop),
                    //           fit: BoxFit.fitWidth,
                    //         ),
                    //       ),
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         mainAxisAlignment: MainAxisAlignment.end,
                    //         children: [
                    //           Text("Zyan Beef",
                    //               style: GoogleFonts.kanit(
                    //                 color: Colors.white,
                    //                 fontSize: 25,
                    //                 shadows: [
                    //                   Shadow(
                    //                     color: Colors.black.withOpacity(0.5),
                    //                     offset: Offset(2, 2),
                    //                     blurRadius: 2,
                    //                   ),
                    //                 ],
                    //               )),
                    //           Text(
                    //             "ระบบบริหารจัดการฟาร์มโคเนื้อ",
                    //             style: GoogleFonts.kanit(
                    //               color: Colors.white,
                    //               fontSize: 15,
                    //               shadows: [
                    //                 Shadow(
                    //                   color: Colors.black.withOpacity(0.5),
                    //                   offset: Offset(2, 2),
                    //                   blurRadius: 2,
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Text(
                    //   'ระบบจัดการน้ำเชื้อ (นักผสมเทียม)',
                    //   style: GoogleFonts.kanit(
                    //     fontSize: 20,
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: double.maxFinite,
                    //   height: 180,
                    //   child: Card(
                    //     semanticContainer: true,
                    //     clipBehavior: Clip.antiAliasWithSaveLayer,
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(10.0),
                    //     ),
                    //     elevation: 5,
                    //     margin: EdgeInsets.symmetric(vertical: 5),
                    //     child: Container(
                    //       alignment: Alignment.centerLeft,
                    //       padding: const EdgeInsets.all(10.0),
                    //       decoration: BoxDecoration(
                    //         color: Colors.black,
                    //         borderRadius: BorderRadius.circular(10),
                    //         image: DecorationImage(
                    //           image: AssetImage('lib/image/breed.png'),
                    //           colorFilter: ColorFilter.mode(
                    //               Colors.black.withOpacity(0.9),
                    //               BlendMode.dstATop),
                    //           fit: BoxFit.fitWidth,
                    //         ),
                    //       ),
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         mainAxisAlignment: MainAxisAlignment.end,
                    //         children: [
                    //           Text("Zyan Breedman",
                    //               style: GoogleFonts.kanit(
                    //                 color: Colors.white,
                    //                 fontSize: 25,
                    //                 shadows: [
                    //                   Shadow(
                    //                     color: Colors.black.withOpacity(0.5),
                    //                     offset: Offset(2, 2),
                    //                     blurRadius: 2,
                    //                   ),
                    //                 ],
                    //               )),
                    //           Text(
                    //             "ระบบสำหรับนักผสมเทียม",
                    //             style: GoogleFonts.kanit(
                    //               color: Colors.white,
                    //               fontSize: 15,
                    //               shadows: [
                    //                 Shadow(
                    //                   color: Colors.black.withOpacity(0.5),
                    //                   offset: Offset(2, 2),
                    //                   blurRadius: 2,
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
