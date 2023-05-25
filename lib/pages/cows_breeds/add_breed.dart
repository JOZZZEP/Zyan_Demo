import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddBreeds extends StatefulWidget {
  const AddBreeds({super.key});

  @override
  State<AddBreeds> createState() => _AddBreedsState();
}

class _AddBreedsState extends State<AddBreeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'เพิ่มสายพันธุ์โค',
          style: GoogleFonts.kanit(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
