import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

import 'package:intern_music_app/screens/now_playing_screen/now_playing_screen.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _DiscoverScreen(),
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class _DiscoverScreen extends StatefulWidget {
  const _DiscoverScreen();

  @override
  State<_DiscoverScreen> createState() => __DiscoverScreenState();
}

class __DiscoverScreenState extends State<_DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1D2B),
      appBar: DiscoverExploreAppBar.exploreAppBar,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: DiscoverTextField.textFieldStyle,
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: itemFilterListView(index),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              height: 50,
              child: Row(
                children: [
                  DiscoverTrendingText.trendingStyle,
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                return itemGridViewContainer(index, context);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: DiscoverBottomNavigationBar.bottomNavigationBarStyle,
    );
  }
}

// List view items

Widget itemFilterListView(int index) {
  final List<String> categories = [
    "All",
    "Life",
    "Comedy",
    "Tech",
    "ssda",
    "asdasdas",
    "ssasdasda",
    "ssasdda",
  ]; // Kategori başlıkları

  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    decoration: ShapeDecoration(
      color: const Color(0xFF2F3142),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(36),
      ),
    ),
    child: Center(
      child: Text(
        categories[index],
        style: const TextStyle(
          color: Color(0xFFC4C4C4),
          fontSize: 13,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          height: 0.17,
          letterSpacing: 0.30,
        ),
      ),
    ),
  );
}

// Style classes

class DiscoverExploreAppBar {
  static AppBar exploreAppBar = AppBar(
    toolbarHeight: 80,
    elevation: 0,
    backgroundColor: Color(0xFF1F1D2B),
    title: Center(
      child: Text(
        "Podkes",
        style: GoogleFonts.poppins(
          color: const Color.fromARGB(255, 255, 255, 255),
          fontSize: 22,
          fontWeight: FontWeight.w700,
          height: 0.05,
          letterSpacing: 0.30,
        ),
      ),
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.notifications),
        color: Colors.white,
      )
    ],
    leading: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.menu,
        color: Colors.white,
      ),
    ),
  );
}

class DiscoverTrendingText {
  static Text trendingStyle = Text(
    'Trending',
    style: GoogleFonts.inter(
      color: Color(0xFFF4F7FC),
      fontSize: 27,
      fontWeight: FontWeight.w700,
      height: 0.05,
    ),
  );
}

class DiscoverTextField {
  static TextField textFieldStyle = TextField(
    decoration: InputDecoration(
      alignLabelWithHint: true,
      hintText: 'Search',
      suffixIcon: Icon(
        Icons.search,
        size: 30,
      ),
      fillColor: Color(0xFF252836),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide.none,
      ),
      filled: true,
    ),
  );
}

class DiscoverBottomNavigationBar {
  static Widget bottomNavigationBarStyle = SizedBox(
    height: 80,
    child: BottomNavigationBar(
      backgroundColor: Color(0xFF252836),
      selectedItemColor: Colors.white,
      unselectedItemColor: Color(0xFF979797),
      selectedFontSize: 15,
      unselectedFontSize: 14,
      iconSize: 25,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Discover',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.my_library_music_rounded),
          label: 'Library',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_rounded),
          label: 'Profile',
        ),
      ],
    ),
  );
}

// Grid view items

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
    'Understanding black holes',
    'The wonders of the multiverse',
  ];

  final List<String> authors = [
    'Claire Malone',
    'Dr. John Smith',
    'Alice Johnson',
    'Mark Thompson',
    'Sarah Brown',
  ];

  String getRandomTitle() {
    return titles[_random.nextInt(titles.length)];
  }

  String getRandomAuthor() {
    return authors[_random.nextInt(authors.length)];
  }
}

Widget itemGridViewContainer(int index, BuildContext context) {
  // Verileri alalım
  Color containerColor = RandomItem().getRandomColor();
  String title = RandomItem().getRandomTitle();
  String author = RandomItem().getRandomAuthor();
  String imageUrl = RandomItem().getRandomImage();

  return GestureDetector(
    onTap: () {
      // NowPlayingScreen'e yönlendirme ve verileri aktarma
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
    child: Center(
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
            SizedBox(height: 10),
            Flexible(
              child: SizedBox(
                width: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.30,
                      ),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    SizedBox(height: 5),
                    Text(
                      author,
                      style: GoogleFonts.inter(
                        color: Color(0xFFCCCCCC),
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        height: 0.16,
                        letterSpacing: 0.30,
                      ),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
