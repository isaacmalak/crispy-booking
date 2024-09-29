import '../components/chipChoise.dart';
import '../components/radioButtonCustom.dart';
import '../components/searchbar.dart';
import '../constants/assets.dart';
import 'package:flutter/material.dart';

class SearchScreen2 extends StatefulWidget {
  const SearchScreen2({super.key});

  @override
  State<SearchScreen2> createState() => _SearchScreen2State();
}

class _SearchScreen2State extends State<SearchScreen2> {
  int selectedSort = 0;
  int selectedBloodType = 0;
  int selectedTransmission = 0;
  RangeValues priceRangeValue = const RangeValues(5, 300);
  RangeValues ratingRangeValue = const RangeValues(0, 5);

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final List bodyType = [
      'All',
      'Sedan',
      'Hatchback',
      'SUV',
      'Coupe',
      'Truck',
      'Van',
      'Mini Van',
      'Crossover',
      'Convertible'
    ];
    final List sortedBy = [
      'Recommendation',
      'A to Z',
      'Nearby',
      'Rating',
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const CustomSearchBar(),
                const SizedBox(height: 20),
                const Text('Body Type',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    )),
                const SizedBox(height: 20),
                ChipchoiseWidget(
                  categories: bodyType,
                  selectedCategoryIndex: selectedBloodType,
                  onCategorySelected: (int index) {
                    setState(() {
                      selectedBloodType = index;
                    });
                  },
                ),
                const SizedBox(height: 60),
                const Text(
                  'Brand',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    // color: const Color(0xffECECED),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xffECECED),
                      width: 2.0,
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'All',
                          ),
                        ),
                      ),
                      Image.asset(
                        Assets.greyArrowDown,
                        width: 14,
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Transmission',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(3, (index) {
                    final transmissionTypes = ['Both', 'Auto', 'Manual'];
                    return Row(
                      children: [
                        Radio<int>(
                          value: index,
                          groupValue: selectedTransmission,
                          onChanged: (int? value) {
                            setState(() {
                              selectedTransmission = value!;
                            });
                          },
                          activeColor: const Color(0xff1A2649),
                        ),
                        Text(
                          transmissionTypes[index],
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    );
                  }),
                ),
                const Text('Sorted By',
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
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
