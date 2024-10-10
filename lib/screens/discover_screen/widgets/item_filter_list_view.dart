import 'package:flutter/material.dart';

class ItemFilterListView extends StatelessWidget {
  final String selectedCategory;
  final Function(String) onFilterSelected;

  ItemFilterListView({
    required this.selectedCategory,
    required this.onFilterSelected,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> categories = ["All", "Life", "Comedy", "Tech"];

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: GestureDetector(
            onTap: () => onFilterSelected(categories[index]),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: ShapeDecoration(
                color: selectedCategory == categories[index]
                    ? Colors.blue
                    : const Color(0xFF2F3142),
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
            ),
          ),
        );
      },
    );
  }
}
