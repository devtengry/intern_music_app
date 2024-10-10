import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoverTrendingText extends StatelessWidget {
  const DiscoverTrendingText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Trending',
        style: GoogleFonts.inter(
          color: const Color(0xFFF4F7FC),
          fontSize: 27,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.0,
        ),
      ),
    );
  }
}
