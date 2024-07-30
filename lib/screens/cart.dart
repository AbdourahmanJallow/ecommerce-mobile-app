import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jendal/components/custom_bottom_nav.dart';
import 'package:jendal/components/custom_button.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'My Order',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisExtent: 100.h,
                      mainAxisSpacing: 30.h),
                  children: List.generate(3, (index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 100.w,
                          height: double.infinity,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color(0xFFE4E7EC),
                          ),
                          child: Flexible(
                            child: Image.asset(
                              'images/shirt.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Nike Sneakers Pro 2024 VLC-DLC',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w900),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '\$129.99',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 16.sp),
                                  ),
                                  Container(
                                      height: 25.h,
                                      decoration: BoxDecoration(
                                          color: Colors.deepOrange.shade100
                                              .withOpacity(0.4),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.h))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.remove,
                                                size: 15.h,
                                              )),
                                          Text(
                                            '3',
                                            style: TextStyle(fontSize: 18.sp),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.add,
                                                size: 15.h,
                                              )),
                                        ],
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal',
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w700),
                    ),
                    Text('\$648.7',
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w700))
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomButton(
                    color: Colors.deepOrange, title: 'Checkout', onTap: () {})
              ],
            )
          ])),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
