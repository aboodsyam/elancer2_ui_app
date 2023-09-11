import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class onBoadingContent extends StatelessWidget {
  const onBoadingContent({
    required this.image1,
    required this.title,

    super.key,
  });

  final String image1;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/$image1.png',
          height: 317,
        ),
        const SizedBox(height: 19),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: Column(
            children: [
              Text(
                title,
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xff23203F),
                ),
              ),
              const SizedBox(height: 20.8,),
              Text(
                'Reading is one of the most rewarding language skills to practice. Most students find they get good ',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w300,
                  fontSize: 17,
                  color: Color(0xff716F87),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
