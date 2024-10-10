// lib/widgets/discover_text_field.dart
import 'package:flutter/material.dart';

class DiscoverTextField extends StatelessWidget {
  const DiscoverTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        alignLabelWithHint: true,
        hintText: 'Search',
        suffixIcon: const Icon(
          Icons.search,
          size: 30,
        ),
        fillColor: const Color(0xFF252836),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        filled: true,
      ),
    );
  }
}
