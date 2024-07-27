import 'package:flutter/material.dart';

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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
                  'images/sneakers.png',
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
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            const Text(
                              'Nike Sneakers Pro 2024 VLC-DLC',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 150,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      border: Border.all(
                                          color: const Color(0xFFE4E7EC))),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('167 Reviews')
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  // height: 40,
                                  width: 150,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      border: Border.all(
                                          color: const Color(0xFFE4E7EC))),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.thumb_up,
                                        size: 20,
                                        color: Colors.teal,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('4.2 Ratings')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Container(
                                padding: const EdgeInsets.all(15),
                                decoration: const BoxDecoration(
                                    color: Color(0xFFE4E7EC),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$59.9',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Icon(
                                      Icons.info_outline,
                                      size: 20,
                                    )
                                  ],
                                )),
                            const SizedBox(height: 15),
                            const SizedBox(
                              child: Text(
                                'The nike sneakers lorem ipsum dolor sit amet, consectetur adipiscing, sed do eiusmod, sed do eiusmod, lorem ipsum dolor sit',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black45),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF6A21E9),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12)),
                                  onPressed: () {},
                                  child: const Text(
                                    'Add to cart',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          ))),
    );
  }
}
