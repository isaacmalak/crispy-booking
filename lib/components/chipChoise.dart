import 'package:flutter/material.dart';

class ChipchoiseWidget extends StatelessWidget {
  final List categories;
  final int selectedCategoryIndex;
  final Function(int) onCategorySelected;

  const ChipchoiseWidget({
    super.key,
    required this.categories,
    required this.selectedCategoryIndex,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: List<Widget>.generate(
        categories.length,
        (int index) {
          return ChoiceChip(
            backgroundColor: const Color(0xFFFFFFFF), // Background color
            showCheckmark: false, // Removes the checkmark
            label: Text(categories[index]),
            selected:
                selectedCategoryIndex == index, // Check if the chip is selected
            onSelected: (bool selected) {
              onCategorySelected(index);
            },
            selectedColor: const Color(0xFF1A2649), // Color when selected
            labelStyle: TextStyle(
              fontWeight: FontWeight.w600,
              color: selectedCategoryIndex == index
                  ? Colors.white
                  : const Color(0xFF1A2649), // Color of text
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Rounded edges
              side: BorderSide(
                width: 0.5, // Border width
                color: selectedCategoryIndex == index
                    ? Colors.transparent
                    : const Color(0xFF1A2649), // Border color when unselected
              ),
            ),
            padding: const EdgeInsets.all(8.0), // Chip padding
          );
        },
      ),
    );
  }
}
