import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jendal/components/custom_bottom_nav.dart';

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
              child: Container(
                width: double.infinity,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisExtent: 130,
                      mainAxisSpacing: 30),
                  children: List.generate(3, (index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
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
                        const SizedBox(
                          width: 20,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nike Sneakers',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '\$129.99',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 23),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 45,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple.shade100,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(30))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.minimize,
                                      size: 25,
                                    )),
                                const Text(
                                  '3',
                                  style: TextStyle(fontSize: 20),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      size: 25,
                                    )),
                              ],
                            ))
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Text('\$648.7',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700))
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6A21E9),
                        padding: const EdgeInsets.symmetric(vertical: 12)),
                    child: const Text(
                      'Checkout',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ])),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
