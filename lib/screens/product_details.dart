import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jendal/components/custom_button.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE4E7EC),
      ),
      body: Container(
          decoration: const BoxDecoration(color: Color(0xFFE4E7EC)),
          child: Center(
              child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                child: Image.asset(
                  'images/shirt.png',
                  height: double.infinity,
                ),
              ),
              Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // const SizedBox(height: 10),
                          const Text(
                            'Nike Sneakers Pro 2024 VLC-DLC',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 120.w,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 9.w, vertical: 9.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.h),
                                    ),
                                    border: Border.all(
                                        color: const Color(0xFFE4E7EC))),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 18.w,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    const Text('167 Reviews')
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                // height: 40,
                                width: 120.w,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 9.w, vertical: 9.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.h),
                                    ),
                                    border: Border.all(
                                        color: const Color(0xFFE4E7EC))),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.thumb_up,
                                      size: 15.h,
                                      color: Colors.teal,
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    const Text('4.2 Ratings')
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15.h),
                          Container(
                              padding: EdgeInsets.all(8.h),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFE4E7EC),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.h))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$59.9',
                                    style: TextStyle(
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Icon(
                                    Icons.info_outline,
                                    size: 18.w,
                                  )
                                ],
                              )),
                          SizedBox(height: 10.h),
                          SizedBox(
                            child: Text(
                              'The nike sneakers lorem ipsum dolor sit amet, consectetur adipiscing, sed do eiusmod, sed do eiusmod, lorem ipsum dolor sit',
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.black45),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: CustomButton(
                                title: 'Add to cart',
                                onTap: () {},
                                color: Colors.deepOrange),
                          )
                        ],
                      ),
                    )),
              ),
            ],
          ))),
    );
  }
}
