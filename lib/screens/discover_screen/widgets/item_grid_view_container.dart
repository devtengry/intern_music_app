import 'package:flutter/material.dart';
import 'dart:math';
import 'package:intern_music_app/screens/now_playing_screen/now_playing_screen.dart';

class RandomItem {
  final Random _random = Random();

  Color getRandomColor() {
    return Color.fromARGB(
      255,
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );
  }

  final List<String> coverImages = [
    'assets/images/dummy_cover_1.png',
    'assets/images/dummy_cover_2.png',
    'assets/images/dummy_cover_3.png',
    'assets/images/dummy_cover_4.png',
  ];

  String getRandomImage() {
    return coverImages[_random.nextInt(coverImages.length)];
  }

  final List<String> titles = [
    'The missing 96 percent of the universe',
    'Exploring the depths of space',
    'The secrets of quantum physics',
    'Astrophysics for beginners',
  ];

  String getRandomTitle() {
    return titles[_random.nextInt(titles.length)];
  }

  final List<String> authors = [
    'Jane Doe',
    'John Smith',
    'Emily Clark',
    'Michael Johnson',
  ];

  String getRandomAuthor() {
    return authors[_random.nextInt(authors.length)];
  }
}

class ItemGridViewContainer extends StatelessWidget {
  final String item;

  ItemGridViewContainer({required this.item});

  @override
  Widget build(BuildContext context) {
    Color containerColor = RandomItem().getRandomColor();
    String title = RandomItem().getRandomTitle();
    String author = RandomItem().getRandomAuthor();
    String coverImage = RandomItem().getRandomImage();
    String imageUrl = RandomItem().getRandomImage();

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NowPlayingScreen(
              backgroundColor: containerColor,
              title: title,
              author: author,
              imageUrl: imageUrl,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(4),
          image: DecorationImage(
            image: AssetImage(coverImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.5),
                  const Color.fromARGB(255, 0, 0, 0)
                ]),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    author,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
