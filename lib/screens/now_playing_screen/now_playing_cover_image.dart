import 'package:flutter/material.dart';

class NowPlayingCoverImage extends StatelessWidget {
  final Color backgroundColor;
  final String imageUrl;

  const NowPlayingCoverImage({
    required this.backgroundColor,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 280,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
