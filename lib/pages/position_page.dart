import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PositionPage extends StatefulWidget {
  const PositionPage({super.key});

  @override
  State<PositionPage> createState() => _PositionPageState();
}

class _PositionPageState extends State<PositionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'พิกัด',
          style: GoogleFonts.kanit(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
