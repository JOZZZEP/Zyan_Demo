// ignore_for_file: prefer_const_constructors
import 'package:first_app/controller/reg_controller.dart';
import 'package:first_app/models/reg_model.dart';
import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/nav_bar_page.dart';
import 'package:get/get.dart';
import 'package:first_app/pages/reg_up_img.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegPersonal extends StatefulWidget {
  const RegPersonal({super.key});

  @override
  State<RegPersonal> createState() => _RegPersonalState();
}

class _RegPersonalState extends State<RegPersonal> {
  final _formKey = GlobalKey<FormState>();

  String? province = 'จังหวัด';

  String name = "";
  String lastName = "";
  String address = "";
  String phone = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ลงทะเบียน Zyan Breedman',
          style: GoogleFonts.kanit(
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ลงทะเบียน',
                      style: GoogleFonts.kanit(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'ระบบสำหรับนักผสมเทียม',
                      style: GoogleFonts.kanit(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'ท่านยังไม่มีบัญชี Zyan Breedman กรุณากรอกข้อมูลเพื่อสมัครสมาชิก',
                      style: GoogleFonts.kanit(
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                style: GoogleFonts.kanit(
                                  fontSize: 20,
                                ),
                                decoration: InputDecoration(
                                    border: InputBorder.none, hintText: 'ชื่อ'),
                                onChanged: (String value) {
                                  setState(() {
                                    RegController().setName(value);
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                style: GoogleFonts.kanit(
                                  fontSize: 20,
                                ),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'นามสกุล'),
                                onChanged: (String value) {
                                  setState(() {
                                    RegController().setLastName(value);
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                style: GoogleFonts.kanit(
                                  fontSize: 20,
                                ),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'ที่อยู่'),
                                onChanged: (String value) {
                                  setState(() {
                                    RegController().setAddress(value);
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // DropdownButtonFormField<String>(
                          //   decoration: InputDecoration(
                          //     labelText: "เลือกจังหวัด",
                          //     labelStyle: GoogleFonts.kanit(
                          //       fontSize: 20,
                          //     ),
                          //     enabledBorder: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(5),
                          //       borderSide:
                          //           BorderSide(width: 1, color: Colors.grey),
                          //     ),
                          //     border: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(5),
                          //       borderSide:
                          //           BorderSide(width: 1, color: Colors.grey),
                          //     ),
                          //   ),
                          //   value: province,
                          //   onChanged: (newValue) {
                          //     setState(() {
                          //       province = newValue;
                          //     });
                          //   },
                          //   items: [
                          //     DropdownMenuItem(
                          //       value: 'จังหวัด',
                          //       child: Text(
                          //         'จังหวัด',
                          //         style: GoogleFonts.kanit(
                          //           fontSize: 20,
                          //         ),
                          //       ),
                          //     ),
                          //     DropdownMenuItem(
                          //       value: 'จังหวัด 2',
                          //       child: Text(
                          //         'จังหวัด 2',
                          //         style: GoogleFonts.kanit(
                          //           fontSize: 20,
                          //         ),
                          //       ),
                          //     ),
                          //     DropdownMenuItem(
                          //       value: 'จังหวัด 3',
                          //       child: Text(
                          //         'จังหวัด 3',
                          //         style: GoogleFonts.kanit(
                          //           fontSize: 20,
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          //   // ),
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          // DropdownButtonFormField<String>(
                          //   decoration: InputDecoration(
                          //     labelText: "เลือกอำเภอ",
                          //     labelStyle: GoogleFonts.kanit(
                          //       fontSize: 20,
                          //     ),
                          //     hintText: "เลือกอำเภอ",
                          //     hintStyle: GoogleFonts.kanit(
                          //       fontSize: 20,
                          //     ),
                          //     enabledBorder: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(5),
                          //       borderSide:
                          //           BorderSide(width: 1, color: Colors.grey),
                          //     ),
                          //     border: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(5),
                          //       borderSide:
                          //           BorderSide(width: 1, color: Colors.grey),
                          //     ),
                          //   ),
                          //   onChanged: (newValue) {
                          //     setState(() {});
                          //   },
                          //   items: [
                          //     DropdownMenuItem(
                          //       value: 'อำเภอ 1',
                          //       child: Text(
                          //         'อำเภอ 1',
                          //         style: GoogleFonts.kanit(
                          //           fontSize: 20,
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          // DropdownButtonFormField<String>(
                          //   decoration: InputDecoration(
                          //     labelText: "เลือกตำบล",
                          //     labelStyle: GoogleFonts.kanit(
                          //       fontSize: 20,
                          //     ),
                          //     hintText: "เลือกตำบล",
                          //     hintStyle: GoogleFonts.kanit(
                          //       fontSize: 20,
                          //     ),
                          //     // enabledBorder: OutlineInputBorder(
                          //     //   borderRadius: BorderRadius.circular(5),
                          //     //   borderSide: BorderSide(width: 1, color: Colors.grey),
                          //     // ),
                          //     border: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(5),
                          //       borderSide:
                          //           BorderSide(width: 1, color: Colors.grey),
                          //     ),
                          //   ),
                          //   onChanged: (newValue) {
                          //     setState(() {});
                          //   },
                          //   items: [
                          //     DropdownMenuItem(
                          //       value: 'ตำบล 1',
                          //       child: Text(
                          //         'ตำบล 1',
                          //         style: GoogleFonts.kanit(
                          //           fontSize: 20,
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                style: GoogleFonts.kanit(
                                  fontSize: 20,
                                ),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'เบอร์โทร'),
                                onChanged: (String value) {
                                  setState(() {
                                    RegController().setPhone(value);
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return NavBarHome();
                                  },
                                ),
                              ),
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(18),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.deepPurple,
                                ),
                                child: Text(
                                  "ถัดไป",
                                  style: GoogleFonts.kanit(
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
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
      ),
    );
  }
}
