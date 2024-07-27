import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> categories = [
      {'label': 'Laptops'},
      {'label': 'Phones'},
      {'label': 'Consoles'},
      {'label': 'Jerseys'},
      {'label': 'Shoes'},
      {'label': 'Clothes'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Categories',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    activeIndex = index;
                  });
                },
                child: Container(
                  width: 120,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey.shade300),
                    color: activeIndex == index
                        ? const Color(0xFF6A21E9)
                        : const Color(0xFFE4E7EC),
                  ),
                  child: Center(
                    child: Text(
                      categories[index]['label'],
                      style: TextStyle(
                          color: activeIndex == index
                              ? Colors.white
                              : const Color(0xFF200253),
                          fontSize: 16),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
