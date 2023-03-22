import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/login_page.dart';

void main(List<String> args) {
  runApp(const project());
}

class project extends StatelessWidget {
  const project({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const login(),
      theme: ThemeData(
          primarySwatch: Colors.teal,
          fontFamily: GoogleFonts.quicksand().fontFamily),
    );
  }
}
