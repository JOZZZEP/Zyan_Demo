import 'package:dotted_border/dotted_border.dart';
import 'package:first_app/api/api_semen.dart';
import 'package:first_app/pages/semen/semen_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:intl/intl.dart';
import 'package:buddhist_datetime_dateformat_sns/buddhist_datetime_dateformat_sns.dart';

import '../../models/semen_model.dart';

class AddSemen extends StatefulWidget {
  const AddSemen({super.key});

  @override
  State<AddSemen> createState() => _AddSemenState();
}

class _AddSemenState extends State<AddSemen> {
  DateTime _dateTime = DateTime.now();
  String formattedDate =
      DateFormat('d MMMM y', 'th').formatInBuddhistCalendarThai(DateTime.now());
  void _showDatePicker() {
    showRoundedDatePicker(
      context: context,
      locale: const Locale('th'),
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 100),
      lastDate: DateTime(DateTime.now().year + 100),
      era: EraMode.BUDDHIST_YEAR,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      borderRadius: 5,
    ).then((dataPick) {
      setState(() {
        _dateTime = dataPick!;
        formattedDate = DateFormat('d MMMM y', 'th')
            .formatInBuddhistCalendarThai(_dateTime);
      });
    });
  }

  String number = "";
  String importDate = "";
  String amount = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'เพิ่มข้อมูลน้ำเชื้อ',
          style: GoogleFonts.kanit(
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: TextEditingController(text: formattedDate),
                      style: GoogleFonts.kanit(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                          labelText: "วันที่นำเข้าน้ำเชื้อ",
                          labelStyle: GoogleFonts.kanit(
                            fontSize: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                const BorderSide(width: 1, color: Colors.grey),
                          ),
                          // border: InputBorder.none,
                          hintText: formattedDate,
                          suffixIcon: IconButton(
                            onPressed: _showDatePicker,
                            icon: const Icon(Icons.calendar_month_outlined),
                          )),
                      onChanged: (value) {
                        importDate = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      style: GoogleFonts.kanit(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        labelText: "เบอร์หลอดน้ำเชื้อ",
                        labelStyle: GoogleFonts.kanit(
                          fontSize: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onChanged: (value) {
                        number = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      style: GoogleFonts.kanit(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        labelText: "จำนวนหลอดน้ำเชื้อ",
                        labelStyle: GoogleFonts.kanit(
                          fontSize: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onChanged: (value) {
                        amount = value;
                      },
                    ),
                    // const SizedBox(
                    //   height: 30,
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.all(5),
                    //   child: DottedBorder(
                    //     borderType: BorderType.RRect,
                    //     radius: const Radius.circular(10),
                    //     padding: const EdgeInsets.all(10),
                    //     strokeWidth: 3,
                    //     dashPattern: [20, 10],
                    //     color: Colors.red,
                    //     child: ClipRRect(
                    //       borderRadius: BorderRadius.circular(10),
                    //       child: Container(
                    //         alignment: Alignment.center,
                    //         height: 250,
                    //         width: double.maxFinite,
                    //         color: Colors.grey,
                    //         child: FloatingActionButton.extended(
                    //           label: Text('ถ่ายรูป',
                    //               style: GoogleFonts.kanit(
                    //                 fontSize: 20,
                    //               )),
                    //           backgroundColor: Colors.red,
                    //           icon: const Icon(
                    //             Icons.camera_enhance_rounded,
                    //             size: 30,
                    //           ),
                    //           onPressed: () {
                    //             const snackBar =
                    //                 SnackBar(content: Text('ถ่ายรูป'));

                    //             ScaffoldMessenger.of(context)
                    //                 .showSnackBar(snackBar);
                    //           },
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        ApiSemen.addSemen(SemenModel(
                          number: number,
                          importDate: formattedDate,
                          amount: amount,
                        ));
                        Get.back(result: "isReload");
                        // Get.to(const SemenPage());
                      },
                      child: Container(
                        width: double.maxFinite,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.deepPurple,
                        ),
                        child: Text(
                          "เพิ่ม",
                          style: GoogleFonts.kanit(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
