import 'package:flutter/material.dart';
import 'package:intern_music_app/screens/discover_screen/widgets/discover_appbar.dart';
import 'package:intern_music_app/screens/discover_screen/widgets/discover_bottom_navigation_bar.dart';
import 'package:intern_music_app/screens/discover_screen/widgets/discover_drawer.dart';
import 'package:intern_music_app/screens/discover_screen/widgets/discover_text_field.dart';
import 'package:intern_music_app/screens/discover_screen/widgets/discover_trending_text.dart';
import 'package:intern_music_app/screens/discover_screen/widgets/item_filter_list_view.dart';
import 'package:intern_music_app/screens/discover_screen/widgets/item_grid_view_container.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _DiscoverScreen(),
      theme: ThemeData.dark(),
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
  int _currentIndex = 0;
  String _selectedCategory = 'All';

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onFilterSelected(String category) {
    setState(() {
      _selectedCategory = category;
    });
  }

  List<String> filterItems(List<String> items, String filter) {
    if (filter == 'All') return items;
    return items.where((item) => item.contains(filter)).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<String> allItems = [
      'Life podcast',
      'Tech podcast',
      'Comedy show',
      'Life tips',
      'Tech updates',
      'Funny moments',
      'Comedy central',
      'Tech innovations',
    ];

    List<String> filteredItems = filterItems(allItems, _selectedCategory);

    return Scaffold(
      backgroundColor: const Color(0xFF1F1D2B),
      appBar: DiscoverExploreAppBar.exploreAppBar(context),
      drawer: DiscoverDrawer.discoverDrawer(context),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: DiscoverTextField(),
          ),
          SizedBox(
            height: 50,
            child: ItemFilterListView(
              selectedCategory: _selectedCategory,
              onFilterSelected: _onFilterSelected,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              height: 50,
              child: DiscoverTrendingText(),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                return ItemGridViewContainer(item: filteredItems[index]);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          DiscoverBottomNavigationBar.bottomNavigationBarStyle(context),
    );
  }
}
