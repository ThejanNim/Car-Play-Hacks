import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 15.0),
                      child: Container(
                        //Back button and Cart button
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: TextButton.styleFrom(
                                  alignment: Alignment.centerLeft),
                              child: Image.asset('assets/images/backIcon.png'),
                            ),
                            Image.asset('assets/images/shopping_cart.png')
                          ],
                        ),
                      ),
                    ),
                    //Product Name and Price
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'USD 350',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 10, 207, 131)),
                            ),
                            SizedBox(height: 6.0),
                            Text(
                              'TMA-2\nHD WIRELESS',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 29.0,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TabBar(
                                    isScrollable: true,
                                    indicator: const UnderlineTabIndicator(
                                        borderSide: BorderSide(
                                            width: 2.5,
                                            color: Color.fromARGB(
                                                255, 10, 207, 131)),
                                        insets: EdgeInsets.symmetric(
                                            horizontal: 36.0)),
                                    controller: _tabController,
                                    labelColor: Colors.black,
                                    tabs: const [
                                      Text(
                                        'Overview',
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                      Text(
                                        'Features',
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                      Text(
                                        'Specification',
                                        style: TextStyle(fontSize: 16),
                                      )
                                    ]),
                              ],
                            ),
                          ),
                        ),
                        Container(
                            height: 1300.0,
                            child: TabBarView(
                              controller: _tabController,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 391,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 25.0, 0, 0),
                                            child: Container(
                                              width: 285.0,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              10.0)),
                                                  color: Colors.grey[200]),
                                              child: Image.asset(
                                                  'assets/images/product1.3.png'),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 25.0, 0, 0),
                                            child: Container(
                                              width: 285.0,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              10.0)),
                                                  color: Colors.grey[200]),
                                              child: Image.asset(
                                                  'assets/images/product1.3.png'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40.0,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Review (102)',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(
                                              height: 25.0,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 23.0),
                                              child: Container(
                                                  child: Column(
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                          child: Row(
                                                        children: [
                                                          const CircleAvatar(
                                                            backgroundImage:
                                                                AssetImage(
                                                                    'assets/images/profile_pic.png'),
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            12.0),
                                                                child: Text(
                                                                  'Madelina',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            12.0),
                                                                child: Row(
                                                                  children: [
                                                                    SizedBox(
                                                                      width:
                                                                          16.0,
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/images/star.png'),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          16.0,
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/images/star.png'),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          16.0,
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/images/star.png'),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          16.0,
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/images/star.png'),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          16.0,
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/images/empty_star.png'),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      )),
                                                      const Text(
                                                        '1 Month ago',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    127,
                                                                    127,
                                                                    127)),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 14.0,
                                                  ),
                                                  const Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 55.0),
                                                    child: Text(
                                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  )
                                                ],
                                              )),
                                            ),
                                            SizedBox(
                                              height: 17.0,
                                            ),
                                            //Second review
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 23.0),
                                              child: Container(
                                                  child: Column(
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                          child: Row(
                                                        children: [
                                                          const CircleAvatar(
                                                            backgroundImage:
                                                                AssetImage(
                                                                    'assets/images/profile_pic.png'),
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            12.0),
                                                                child: Text(
                                                                  'Irfan',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            12.0),
                                                                child: Row(
                                                                  children: [
                                                                    SizedBox(
                                                                      width:
                                                                          16.0,
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/images/star.png'),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          16.0,
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/images/star.png'),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          16.0,
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/images/star.png'),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          16.0,
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/images/star.png'),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          16.0,
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/images/star.png'),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      )),
                                                      const Text(
                                                        '1 Month ago',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    127,
                                                                    127,
                                                                    127)),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 14.0,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 55.0),
                                                    child: Column(
                                                      children: [
                                                        const Text(
                                                          'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                        SizedBox(
                                                          height: 14.0,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      right:
                                                                          15.0),
                                                              child: Container(
                                                                height: 64.0,
                                                                width: 64.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                  color: Colors
                                                                          .grey[
                                                                      100],
                                                                ),
                                                                child: Image.asset(
                                                                    'assets/images/product1.png'),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      right:
                                                                          15.0),
                                                              child: Container(
                                                                height: 64.0,
                                                                width: 64.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                  color: Colors
                                                                          .grey[
                                                                      100],
                                                                ),
                                                                child: Image.asset(
                                                                    'assets/images/product1.png'),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      right:
                                                                          15.0),
                                                              child: Container(
                                                                height: 64.0,
                                                                width: 64.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                  color: Colors
                                                                          .grey[
                                                                      100],
                                                                ),
                                                                child: Image.asset(
                                                                    'assets/images/product1.png'),
                                                              ),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )),
                                            ),
                                            SizedBox(
                                              height: 17.0,
                                            ),
                                            //third review
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 23.0),
                                              child: Container(
                                                  child: Column(
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                          child: Row(
                                                        children: [
                                                          const CircleAvatar(
                                                            backgroundImage:
                                                                AssetImage(
                                                                    'assets/images/profile_pic.png'),
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            12.0),
                                                                child: Text(
                                                                  'Ravi Putra',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            12.0),
                                                                child: Row(
                                                                  children: [
                                                                    SizedBox(
                                                                      width:
                                                                          16.0,
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/images/star.png'),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          16.0,
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/images/star.png'),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          16.0,
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/images/star.png'),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          16.0,
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/images/star.png'),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          16.0,
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/images/star.png'),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      )),
                                                      const Text(
                                                        '1 Month ago',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    127,
                                                                    127,
                                                                    127)),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 14.0,
                                                  ),
                                                  const Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 55.0),
                                                    child: Text(
                                                      'Excepteur sint occaecat cupidatat non proident',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  )
                                                ],
                                              )),
                                            ),
                                            const SizedBox(
                                              height: 40.0,
                                            ),
                                            const Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                'See All Reviews',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 33.0,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 300.0,
                                      color: const Color.fromARGB(
                                          255, 246, 246, 246),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20.0, 28.0, 20.0, 20.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: const [
                                                Text(
                                                  'Another Product',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Text(
                                                  'Sea All',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color.fromARGB(
                                                          255, 127, 127, 127)),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 190.0,
                                              child: ListView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 15.0),
                                                    child: Container(
                                                      width: 155.0,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0),
                                                          color: Colors.white),
                                                      child: Column(
                                                        children: [
                                                          Image.asset(
                                                              'assets/images/product2.png'),
                                                          const Text(
                                                            'TMA-2 HD Wireless',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                          const Text('USD 350',
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700))
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 15.0),
                                                    child: Container(
                                                      width: 155.0,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0),
                                                          color: Colors.white),
                                                      child: Column(
                                                        children: [
                                                          Image.asset(
                                                              'assets/images/product2.png'),
                                                          const Text(
                                                            'TMA-2 HD Wireless',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                          const Text('USD 350',
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700))
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 15.0),
                                                    child: Container(
                                                      width: 155.0,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0),
                                                          color: Colors.white),
                                                      child: Column(
                                                        children: [
                                                          Image.asset(
                                                              'assets/images/product2.png'),
                                                          const Text(
                                                            'TMA-2 HD Wireless',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                          const Text('USD 350',
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700))
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                    child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      24.0, 30.0, 24.0, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Highly Detailed Audio',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(
                                        height: 13.0,
                                      ),
                                      const Text(
                                        'The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers.',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        height: 13.0,
                                      ),
                                      const Text(
                                        'The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers.',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        height: 24.0,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset('assets/images/img8.png'),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                14.0, 0, 0, 0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 8.0),
                                                  child: Text(
                                                    'APTX HD WIRELESS\nAUDIO',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                                Container(
                                                  width: 199.0,
                                                  child: const Text(
                                                    'The Aptx® HD codec transmits 24-bit hi-res audio, equal to or better than CD quality.',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 24.0,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 24.0),
                                      Row(
                                        children: [
                                          Image.asset('assets/images/img9.png'),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                14.0, 0, 0, 0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 8.0),
                                                  child: Text(
                                                    'APTX HD WIRELESS\nAUDIO',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                                Container(
                                                  width: 199.0,
                                                  child: const Text(
                                                    'The Aptx® HD codec transmits 24-bit hi-res audio, equal to or better than CD quality.',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                                Text('Specification')
                              ],
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
