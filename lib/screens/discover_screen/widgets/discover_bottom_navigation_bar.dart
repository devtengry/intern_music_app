import 'package:flutter/material.dart';
import 'package:intern_music_app/screens/discover_screen/discover_screen.dart';
import 'package:intern_music_app/screens/library_screen/library_screen.dart';
import 'package:intern_music_app/screens/profile_screen/profile_screen.dart';

class DiscoverBottomNavigationBar {
  static Widget bottomNavigationBarStyle(BuildContext context) {
    return BottomAppBar(
      height: 90,
      color: const Color(0xFF252836),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
              Icons.home_filled, 'Discover', DiscoverScreen(), context),
          _buildNavItem(Icons.my_library_music_rounded, 'Library',
              LibraryScreen(), context),
          _buildNavItem(
              Icons.person_2_rounded, 'Profile', ProfileScreen(), context),
        ],
      ),
    );
  }

  static Column _buildNavItem(
      IconData icon, String label, Widget screen, BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(icon, color: Colors.white),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => screen),
              (Route<dynamic> route) => false,
            );
          },
        ),
        Text(label, style: TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }
}
