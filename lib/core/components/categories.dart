import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      {'label': 'Electronics'},
      {'label': 'Fashion'},
      {'label': 'Sports'},
      {'label': 'Health'},
      {'label': 'Furniture'},
      {'label': 'Food'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categories',
          style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w900),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5.h),
          height: 40.h,
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
                child: Center(
                  child: Container(
                    width: 100.w,
                    height: double.infinity,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.h)),
                      // border: Border.all(
                      //     color: activeIndex == index
                      //         ? Colors.black
                      //         : Colors.transparent),
                      color: activeIndex == index
                          ? Colors.deepOrange
                          : const Color(0xFFE4E7EC),
                    ),
                    child: Center(
                      widthFactor: double.infinity,
                      heightFactor: double.infinity,
                      child: Text(
                        categories[index]['label'],
                        style: TextStyle(
                            color: activeIndex == index
                                ? Colors.white
                                : const Color(0xFF200253),
                            fontSize: 16.sp),
                      ),
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
