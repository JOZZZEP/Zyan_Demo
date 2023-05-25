import 'package:first_app/controller/reg_controller.dart';
import 'package:first_app/pages/calendar_page.dart';
import 'package:first_app/pages/cows_breeds/cows_breed_page.dart';
import 'package:first_app/pages/cows_list_page.dart';
import 'package:first_app/pages/notify_page.dart';
import 'package:first_app/pages/position_page.dart';
import 'package:first_app/pages/report_page.dart';
import 'package:first_app/pages/semen/semen_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: false,
        foregroundColor: Colors.black,
        title: Text(
          'ZYAN BREEDSMAN',
          style: GoogleFonts.kanit(
            fontSize: 18,
            color: Colors.black,
          ),
          textAlign: TextAlign.left,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              children: [
                MaterialButton(
                  minWidth: 10,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const NotifyPage();
                      },
                    ),
                  ),
                  child: const Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                ),
                MaterialButton(
                  minWidth: 10,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const CalendarPage();
                      },
                    ),
                  ),
                  child: const Icon(
                    Icons.calendar_month_rounded,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 300,
            child: const Opacity(
              opacity: 0.8,
              child: Image(
                image: AssetImage('lib/image/farm.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.account_circle_outlined,
                                size: 80,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                'นาย ${RegController().name} ${RegController().lastName}',
                                style: GoogleFonts.kanit(
                                  fontSize: 18,
                                  color: Colors.grey[700],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const CowsBreed();
                                  },
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(100, 50),
                                backgroundColor: Colors.deepPurple,
                                padding: const EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.call_split,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'สายพันธุ์โค',
                                    style: GoogleFonts.kanit(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const SemenPage();
                                  },
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(100, 50),
                                backgroundColor: Colors.red,
                                padding: const EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.water_drop_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'น้ำเชื้อ',
                                    style: GoogleFonts.kanit(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 420,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const CowsList();
                                  },
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size.fromWidth(100),
                                backgroundColor: Colors.white,
                                padding: const EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    width: 3,
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.list_rounded,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    'รายการโค',
                                    style: GoogleFonts.kanit(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const ReportPage();
                                  },
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size.fromWidth(100),
                                backgroundColor: Colors.white,
                                padding: const EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    width: 3,
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.description_outlined,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    'รายงาน',
                                    style: GoogleFonts.kanit(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const PositionPage();
                                  },
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size.fromWidth(100),
                                backgroundColor: Colors.white,
                                padding: const EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    width: 3,
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.place_outlined,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    'พิกัด',
                                    style: GoogleFonts.kanit(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            )
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
    );
  }
}
