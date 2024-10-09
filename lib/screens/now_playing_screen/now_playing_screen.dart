import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intern_music_app/screens/discover_screen/discover_screen.dart';

class NowPlayingScreen extends StatefulWidget {
  final Color backgroundColor;
  final String title;
  final String author;
  final String imageUrl;

  const NowPlayingScreen({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.author,
    required this.imageUrl,
  });

  @override
  _NowPlayingScreenState createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends State<NowPlayingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1D2B),
      appBar: DesignAppBarClass.designAppBar(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Dikey ortalama
          children: [
            CoverContainerClass.coverContainerClass(
                widget.backgroundColor, widget.imageUrl),
            StyleTextClass.titleTextStyle(widget.title),
            SizedBox(height: 10),
            StyleTextClass.authorTextStyle(widget.author),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [NowPlayingIconButtons()],
            ),
          ],
        ),
      ),
    );
  }
}

//Classes for AppBar

class DesignAppBarClass {
  static AppBar designAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 90,
      backgroundColor: Color(0xFF1F1D2B),
      leading: IconButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => DiscoverScreen()));
        },
        icon: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.white,
        ),
      ),
      title: Center(
        child: Text(
          'Now Playing',
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            height: 0.06,
            letterSpacing: 0.30,
          ),
        ),
      ),
    );
  }
}

//Classes for Cover Container
class CoverContainerClass {
  static Container coverContainerClass(
          Color backgroundColor, String imageUrl) =>
      Container(
        width: 300,
        height: 280,
        decoration: ShapeDecoration(
          color: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      );
}

//Classes for Text

class StyleTextClass {
  static SizedBox titleTextStyle(String title) => SizedBox(
        width: 300,
        child: Text(
          title,
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.30,
          ),
          textAlign: TextAlign.start,
          overflow: TextOverflow.clip,
          maxLines: 2,
        ),
      );
  static SizedBox authorTextStyle(String author) => SizedBox(
        width: 300,
        child: Text(
          author,
          style: GoogleFonts.inter(
            color: Color(0xFFCCCCCC),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 0.08,
            letterSpacing: 0.30,
          ),
        ),
      );
}

//Classes for Icons

class NowPlayingIconButtons extends StatefulWidget {
  const NowPlayingIconButtons({super.key});

  @override
  _NowPlayingIconButtonsState createState() => _NowPlayingIconButtonsState();
}

class _NowPlayingIconButtonsState extends State<NowPlayingIconButtons> {
  bool isPlaying = false;

  void _togglePlay() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // İkonları yatay ortalama
      children: [
        IconButton(
          onPressed: () {
            // Handle skip previous action
          },
          icon: Icon(
            Icons.skip_previous_rounded,
            color: Colors.white,
            size: 35,
          ),
        ),
        SizedBox(width: 28),
        Container(
          height: 56,
          width: 56,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xFF2F3142),
          ),
          child: IconButton(
            onPressed: _togglePlay,
            icon: Icon(
              isPlaying ? Icons.pause : Icons.play_arrow_rounded,
              color: Colors.white,
              size: 35,
            ),
          ),
        ),
        SizedBox(width: 28),
        IconButton(
          onPressed: () {
            // Handle skip next action
          },
          icon: Icon(
            Icons.skip_next_rounded,
            color: Colors.white,
            size: 35,
          ),
        ),
      ],
    );
  }
}
