import 'package:crispy_booking/properties/propertiesScreen.dart';

import '../components/chipChoise.dart';
import '../components/searchbar.dart';
import '../constants/assets.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int selectedSort = 0;
  int selectedCategory = 0;
  RangeValues priceRangeValue = const RangeValues(5, 300);
  RangeValues ratingRangeValue = const RangeValues(0, 5);

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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PropertiesScreen()));
                  },
                  child: const CustomSearchBar()),
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
              Row(
                children: [
                  const Text('Price',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                  const Spacer(),
                  Text(
                    '\$${priceRangeValue.start.round()} - \$${priceRangeValue.end.round()}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              RangeSlider(
                values: priceRangeValue,
                max: 300,
                divisions: 300,
                activeColor: const Color(0xff1A2649),
                inactiveColor: const Color(0xA9FCECED),
                labels: RangeLabels(
                  priceRangeValue.start.round().toString(),
                  priceRangeValue.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    priceRangeValue = values;
                  });
                },
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text('Rating',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                  const Spacer(),
                  Image.asset(
                    Assets.ratingStar,
                    width: 24,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${ratingRangeValue.start.toStringAsFixed(1)} - ${ratingRangeValue.end.toStringAsFixed(1)}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              RangeSlider(
                values: ratingRangeValue,
                max: 5,
                divisions: 10,
                activeColor: const Color(0xff1A2649),
                inactiveColor: const Color(0xA9FCECED),
                labels: RangeLabels(
                  ratingRangeValue.start.toStringAsFixed(1),
                  ratingRangeValue.end.toStringAsFixed(1),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    ratingRangeValue = values;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(5, (index) {
                    return Text(
                      (index + 1 * 1).toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
