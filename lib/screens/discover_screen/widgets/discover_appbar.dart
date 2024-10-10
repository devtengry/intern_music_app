import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoverExploreAppBar {
  static AppBar exploreAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      elevation: 0,
      backgroundColor: const Color(0xFF1F1D2B),
      title: Center(
        child: Text(
          "Podkes",
          style: GoogleFonts.poppins(
            color: const Color(0xFFFFFFFF),
            fontSize: 22,
            fontWeight: FontWeight.w700,
            height: 0.05,
            letterSpacing: 0.30,
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  padding: const EdgeInsets.all(16.0),
                  height: 400,
                  color: const Color(0xFF1F1D2B),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Notifications",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: ListView(
                          children: <Widget>[
                            ListTile(
                              title: Text("Notification 1"),
                            ),
                            ListTile(
                              title: Text("Notification 2"),
                            ),
                            ListTile(
                              title: Text("Notification 3"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          icon: const Icon(Icons.notifications),
          color: Colors.white,
        )
      ],
      leading: Builder(
        builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}
