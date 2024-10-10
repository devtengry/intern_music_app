import 'package:flutter/material.dart';

class NowPlayingControlButtons extends StatelessWidget {
  final bool isPlaying;
  final VoidCallback togglePlayPause;

  const NowPlayingControlButtons({
    required this.isPlaying,
    required this.togglePlayPause,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.skip_previous_rounded,
            color: Colors.white,
            size: 35,
          ),
        ),
        const SizedBox(width: 28),
        Container(
          height: 56,
          width: 56,
          decoration: const ShapeDecoration(
            shape: CircleBorder(),
            color: Color(0xFF2F3142),
          ),
          child: IconButton(
            onPressed: togglePlayPause,
            icon: Icon(
              isPlaying ? Icons.pause : Icons.play_arrow_rounded,
              color: Colors.white,
              size: 35,
            ),
          ),
        ),
        const SizedBox(width: 28),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.skip_next_rounded,
            color: Colors.white,
            size: 35,
          ),
        ),
      ],
    );
  }
}
