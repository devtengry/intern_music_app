import 'package:flutter/material.dart';
import 'package:intern_music_app/screens/discover_screen/discover_screen.dart';
import 'package:intern_music_app/screens/welcome_screen/style_welcome_color.dart';
import 'package:intern_music_app/screens/welcome_screen/center_containers.dart';
import 'package:intern_music_app/screens/welcome_screen/center_container_texts.dart';
import 'package:intern_music_app/screens/welcome_screen/center_container_descriptions.dart';
import 'package:intern_music_app/screens/welcome_screen/welcome_floating_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const _WelcomeScreen(),
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class _WelcomeScreen extends StatefulWidget {
  const _WelcomeScreen();

  @override
  State<_WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<_WelcomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _images = [
    CenterContainers.centerContainer1,
    CenterContainers.centerContainer2,
    CenterContainers.centerContainer3,
  ];

  final List<Widget> _texts = [
    CenterContainerTexts.centerContainerText1,
    CenterContainerTexts.centerContainerText2,
    CenterContainerTexts.centerContainerText3,
  ];

  final List<Widget> _descriptions = [
    CenterContainerDescription.centerContainerDescription1,
    CenterContainerDescription.centerContainerDescription2,
    CenterContainerDescription.centerContainerDescription3,
  ];

  void _nextImage() {
    setState(() {
      if (_currentIndex < _images.length - 1) {
        _currentIndex++;
      } else {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => DiscoverScreen()),
          (Route<dynamic> route) => false,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleWelcomeColor.welcomeColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _images[_currentIndex],
          const SizedBox(height: 60),
          _texts[_currentIndex],
          const SizedBox(height: 20),
          _descriptions[_currentIndex],
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
          WelcomeFloatingButton.welcomeFloatingButton(_nextImage),
    );
  }
}
