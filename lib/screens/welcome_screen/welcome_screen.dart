import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intern_music_app/screens/discover_screen/discover_screen.dart';

//StatelessWidget
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

// StatefulWideget

class _WelcomeScreen extends StatefulWidget {
  const _WelcomeScreen();

  @override
  State<_WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<_WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleWelcomeColor.welcomeColor,
      body: DesignWelcomeBody.designWelcomeBody,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
          WelcomeFloatingButton.welcomeFloatingButton(context),
    );
  }
}

//Design Classes

class StyleWelcomeColor {
  static Color welcomeColor = const Color(0xFF1F1D2B);
}

class DesignWelcomeBody {
  static Column designWelcomeBody = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      CenterContainers.centerContainer1,
      const SizedBox(
        height: 60,
      ),
      CenterContainerTexts.centerContainerText1,
      const SizedBox(
        height: 20,
      ),
      CenterContainerDescription.centerContainerDescription1,
      const SizedBox(
        height: 25,
      ),
      CenterContainerImages.centerContainerImage1,
      const SizedBox(
        height: 25,
      ),
    ],
  );
}

class CenterContainers {
  static Center centerContainer1 = Center(
    child: Container(
      width: 240,
      height: 317,
      decoration: const ShapeDecoration(
        color: Color(0xFFC4C4C4),
        image: DecorationImage(
            image: AssetImage("assets/images/home_screen_image_1.jpeg"),
            fit: BoxFit.cover),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
          ),
        ),
      ),
    ),
  );
}

class CenterContainerTexts {
  static SizedBox centerContainerText1 = SizedBox(
    width: 140,
    height: 24,
    child: Text(
      'Podkes',
      style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 36,
          fontWeight: FontWeight.w700,
          height: 0.01,
          letterSpacing: 0.30),
    ),
  );
}

class CenterContainerDescription {
  static SizedBox centerContainerDescription1 = SizedBox(
    width: 332,
    child: Text(
      textAlign: TextAlign.center,
      'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
      style: GoogleFonts.inter(
          color: const Color(0xFFC4C4C4),
          fontSize: 13,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.50,
          height: 1),
    ),
  );
}

class CenterContainerImages {
  static Container centerContainerImage1 = Container(
    width: 53,
    height: 8,
    decoration: const ShapeDecoration(
      image: DecorationImage(
          image: AssetImage("assets/images/slider1.png"), fit: BoxFit.cover),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
    ),
  );
}

class WelcomeFloatingButton {
  static SizedBox welcomeFloatingButton(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DiscoverScreen(),
            ),
          );
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.arrow_forward,
          size: 33,
          color: Color.fromARGB(255, 75, 52, 179),
        ),
      ),
    );
  }
}
