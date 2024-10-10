import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intern_music_app/screens/discover_screen/discover_screen.dart';
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
    'The mysteries of the galaxy',
    'A journey through time',
    'Quantum mechanics explained',
    'Physics of the future',
    'The wonders of black holes',
    'Exploring the universe',
    'Space and time theories',
    'Discovering the cosmos',
    'The age of the universe',
    'Astrobiology and the search for life',
  ];

  String getRandomTitle() {
    return titles[_random.nextInt(titles.length)];
  }

  final List<String> authors = [
    'Albert Einstein',
    'Stephen Hawking',
    'Neil deGrasse Tyson',
    'Carl Sagan',
    'Michio Kaku',
    'Brian Greene',
    'Richard Feynman',
    'Isaac Asimov',
    'Arthur C. Clarke',
    'Edwin Hubble',
  ];

  String getRandomAuthor() {
    return authors[_random.nextInt(authors.length)];
  }
}

class ItemListViewContainer extends StatelessWidget {
  final String item;

  ItemListViewContainer({required this.item});

  @override
  Widget build(BuildContext context) {
    RandomItem randomItem = RandomItem();
    Color containerColor = randomItem.getRandomColor();
    String title = randomItem.getRandomTitle();
    String author = randomItem.getRandomAuthor();
    String coverImage = randomItem.getRandomImage();

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NowPlayingScreen(
              backgroundColor: containerColor,
              title: title,
              author: author,
              imageUrl: coverImage,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 51, 46, 73),
          borderRadius: BorderRadius.circular(4),
        ),
        child: ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(coverImage),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            author,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF1F1D2B),
        appBar: AppBar(
          title: Text(
            'Library',
            style: GoogleFonts.poppins(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 22,
              fontWeight: FontWeight.w700,
              height: 0.05,
              letterSpacing: 0.30,
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (builder) => DiscoverScreen()));
              },
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              )),
          backgroundColor: const Color(0xFF1F1D2B),
        ),
        body: const ItemListView(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(10, (index) => 'Item $index');

    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ItemListViewContainer(item: items[index]);
      },
    );
  }
}
