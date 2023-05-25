import 'package:first_app/pages/cows_breeds/add_breed.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CowsBreed extends StatefulWidget {
  const CowsBreed({super.key});

  @override
  State<CowsBreed> createState() => _CowsBreedState();
}

class _CowsBreedState extends State<CowsBreed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'สายพันธุ์โค',
          style: GoogleFonts.kanit(
            fontSize: 20,
          ),
        ),
        actions: [
          MaterialButton(
            minWidth: 20,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const AddBreeds();
                },
              ),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
