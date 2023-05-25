// ignore_for_file: prefer_const_constructors

import 'package:dotted_border/dotted_border.dart';
import 'package:first_app/pages/nav_bar_page.dart';
import 'package:first_app/pages/reg_cow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegImageUp extends StatefulWidget {
  const RegImageUp({super.key});

  @override
  State<RegImageUp> createState() => _RegImageUpState();
}

class _RegImageUpState extends State<RegImageUp> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actionsAlignment: MainAxisAlignment.center,
            title: Text(
              "กรอกข้อมูลนายสัตว์แพทย์ผู้รับรอง",
              style: GoogleFonts.kanit(
                fontSize: 20,
              ),
            ),
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                    ..pop()
                    ..pop();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NavBarHome();
                      },
                    ),
                  );
                },
                color: Colors.red,
                child: Text(
                  "ข้าม",
                  style: GoogleFonts.kanit(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return RegCows();
                  }));
                },
                color: Colors.green,
                child: Text(
                  "ตกลง",
                  style: GoogleFonts.kanit(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          );
        });
  }

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
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              SingleChildScrollView(
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
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          style: GoogleFonts.kanit(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'หมายเลขบัตรประจำตัวประชาชน',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(10),
                        padding: EdgeInsets.all(10),
                        strokeWidth: 3,
                        dashPattern: [20, 10],
                        color: Colors.red,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            alignment: Alignment.center,
                            height: 250,
                            width: double.maxFinite,
                            color: Colors.grey,
                            child: FloatingActionButton.extended(
                              label: Text('ถ่ายรูป',
                                  style: GoogleFonts.kanit(
                                    fontSize: 20,
                                  )),
                              backgroundColor: Colors.red,
                              icon: Icon(
                                Icons.camera_enhance_rounded,
                                size: 30,
                              ),
                              onPressed: () {
                                const snackBar =
                                    SnackBar(content: Text('ถ่ายรูป'));

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: _showDialog,
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
      ),
    );
  }
}
