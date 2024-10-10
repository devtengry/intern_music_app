import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NowPlayingTitle extends StatelessWidget {
  final String title;

  const NowPlayingTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.30,
      ),
      textAlign: TextAlign.center,
    );
  }
}
