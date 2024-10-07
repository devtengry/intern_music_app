import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const _WelcomeScreen(),
      theme: ThemeData.light(),
    );
  }
}

class _WelcomeScreen extends StatefulWidget {
  const _WelcomeScreen({super.key});

  @override
  State<_WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<_WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1D2B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 240,
                height: 317,
                decoration: const ShapeDecoration(
                  color: Color(0xFFC4C4C4),
                  image: DecorationImage(
                      image:
                          AssetImage("assets/images/home_screen_image_1.jpeg"),
                      fit: BoxFit.cover),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const SizedBox(
              width: 136,
              height: 24,
              child: Text(
                'Podkes',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    height: 0.01,
                    letterSpacing: 0.30),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
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
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 53,
              height: 8,
              decoration: const ShapeDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/slider1.png"),
                    fit: BoxFit.cover),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.arrow_forward,
            color: Color.fromARGB(255, 75, 52, 179),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      /* bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.abc_sharp,
            ),
            label: "sad",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "asd"),
        ],
      ), */
    );
  }
}
