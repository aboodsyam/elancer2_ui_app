import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LancheSceern extends StatefulWidget {
  const LancheSceern({super.key});

  @override
  State<LancheSceern> createState() => _LancheSceernState();
}

class _LancheSceernState extends State<LancheSceern> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, '/on_bording_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0xffA6D1E6),
              Color(0xffFEFBF6),
            ],
          ),
        ),
        child: Text(
          'UI APP',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
