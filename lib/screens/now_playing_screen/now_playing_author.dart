import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NowPlayingAuthor extends StatelessWidget {
  final String author;

  const NowPlayingAuthor({required this.author});

  @override
  Widget build(BuildContext context) {
    return Text(
      author,
      style: GoogleFonts.inter(
        color: const Color(0xFFCCCCCC),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
