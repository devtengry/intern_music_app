import 'package:flutter/material.dart';
import 'now_playing_appbar.dart';
import 'now_playing_cover_image.dart';
import 'now_playing_title.dart';
import 'now_playing_author.dart';
import 'now_playing_control_buttons.dart';
import 'package:audioplayers/audioplayers.dart';

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
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _togglePlayPause() async {
    try {
      if (isPlaying) {
        await _audioPlayer.pause();
      } else {
        await _audioPlayer.play(AssetSource('assets/audio/sergio_27s.mp3'));
      }
      setState(() {
        isPlaying = !isPlaying;
      });
    } catch (e) {
      print('Error in _togglePlayPause: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFF1F1D2B),
      appBar: NowPlayingAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NowPlayingCoverImage(
              backgroundColor: widget.backgroundColor,
              imageUrl: widget.imageUrl,
            ),
            NowPlayingTitle(title: widget.title),
            const SizedBox(height: 10),
            NowPlayingAuthor(author: widget.author),
            const SizedBox(height: 20),
            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.1,
              child: Image.asset(
                'assets/images/fooo.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(height: 40),
            NowPlayingControlButtons(
              isPlaying: isPlaying,
              togglePlayPause: _togglePlayPause,
            ),
          ],
        ),
      ),
    );
  }
}
