import 'package:crispy_booking/components/chipChoise.dart';
import 'package:crispy_booking/components/searchbar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int selectedSort = 0; // Tracks the selected chip index
  int selectedCategory = 0; // Tracks the selected chip index

  @override
  Widget build(BuildContext context) {
    final List categories = [
      'Yacht',
      'Cars',
      'Electric',
      'Events',
      'Properties'
    ];
    final List sortedBy = [
      'Recommendation',
      'A to Z',
      'Nearby',
      'Rating',
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Searchbar(),
              const SizedBox(height: 20),
              const Text('Category',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
              const SizedBox(height: 20),
              ChipchoiseWidget(
                categories: categories,
                selectedCategoryIndex: selectedCategory,
                onCategorySelected: (int index) {
                  setState(() {
                    selectedCategory = index;
                  });
                },
              ),
              const SizedBox(height: 60),
              const Text('Sort by',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
              const SizedBox(height: 20),
              ChipchoiseWidget(
                categories: sortedBy,
                selectedCategoryIndex: selectedSort,
                onCategorySelected: (int index) {
                  setState(() {
                    selectedSort = index;
                  });
                },
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
