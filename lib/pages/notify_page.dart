import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotifyPage extends StatefulWidget {
  const NotifyPage({super.key});

  @override
  State<NotifyPage> createState() => _NotifyPageState();
}

class _NotifyPageState extends State<NotifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'แจ้งเตือน',
          style: GoogleFonts.kanit(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
