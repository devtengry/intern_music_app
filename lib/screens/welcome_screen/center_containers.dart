import 'package:flutter/material.dart';

class CenterContainers {
  static Center centerContainer1 = Center(
    child: Container(
      width: 240,
      height: 317,
      decoration: const ShapeDecoration(
        color: Color(0xFFC4C4C4),
        image: DecorationImage(
          image: AssetImage("assets/images/home_screen_image_1.jpeg"),
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
          ),
        ),
      ),
    ),
  );

  static Center centerContainer2 = Center(
    child: Container(
      width: 240,
      height: 317,
      decoration: const ShapeDecoration(
        color: Color(0xFFC4C4C4),
        image: DecorationImage(
          image: AssetImage("assets/images/home_screen_image_2.jpeg"),
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
          ),
        ),
      ),
    ),
  );

  static Center centerContainer3 = Center(
    child: Container(
      width: 240,
      height: 317,
      decoration: const ShapeDecoration(
        color: Color(0xFFC4C4C4),
        image: DecorationImage(
          image: AssetImage("assets/images/home_screen_image_3.jpeg"),
          fit: BoxFit.cover,
        ),
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
