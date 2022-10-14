import 'package:car_play/components/disable_search_bar.dart';
import 'package:car_play/components/search_bar.dart';
import 'package:car_play/screens/ExplorePage.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 18, 24.0, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style:
                        TextButton.styleFrom(alignment: Alignment.centerLeft),
                    child: Image.asset('assets/images/backIcon.png'),
                  ),
                  const Text(
                    'Search',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('assets/images/shopping_cart.png')
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 33.0)),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExplorePage()));
                  },
                  child: const DisableSearchBar()),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Lastest search',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 15.0),
                                      child: Image.asset(
                                          'assets/images/clock.png'),
                                    ),
                                    const Text(
                                      'TMA2 Wireless',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Image.asset('assets/images/close_icon.png')
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 15.0),
                                      child: Image.asset(
                                          'assets/images/clock.png'),
                                    ),
                                    const Text(
                                      'Cable',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Image.asset('assets/images/close_icon.png')
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 20.0),
                                      child: Text(
                                        'Popular product',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.grey[200]),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.asset(
                                              'assets/images/product1.png'),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 5.0),
                                                child: Text(
                                                  'TMA-2 Comfort Wireless',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                              const Text(
                                                'USD 270',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 13.0),
                                                child: Row(
                                                  children: [
                                                    Image.asset(
                                                        'assets/images/star.png'),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 5.0),
                                                      child: Text(
                                                        '4.6',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10.0),
                                                      child: Text('86 Reviews'),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  // product 2
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.grey[200]),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.asset(
                                              'assets/images/product1.png'),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 5.0),
                                                child: Text(
                                                  'TMA-2 Comfort Wireless',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                              const Text(
                                                'USD 270',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 13.0),
                                                child: Row(
                                                  children: [
                                                    Image.asset(
                                                        'assets/images/star.png'),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 5.0),
                                                      child: Text(
                                                        '4.6',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10.0),
                                                      child: Text('86 Reviews'),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.grey[200]),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Image.asset(
                                              'assets/images/product1.png'),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 5.0),
                                                child: Text(
                                                  'TMA-2 Comfort Wireless',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                              const Text(
                                                'USD 270',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 13.0),
                                                child: Row(
                                                  children: [
                                                    Image.asset(
                                                        'assets/images/star.png'),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 5.0),
                                                      child: Text(
                                                        '4.6',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10.0),
                                                      child: Text('86 Reviews'),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}