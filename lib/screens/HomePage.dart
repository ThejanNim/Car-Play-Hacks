import 'package:car_play/components/disable_search_bar.dart';
import 'package:car_play/model/categories.dart';
import 'package:car_play/screens/ProductDetails.dart';
import 'package:car_play/screens/ProfilePage.dart';
import 'package:car_play/screens/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:car_play/api/rest_api.dart';
import 'package:car_play/model/product.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late Future<List<ProductModel>> futureDataProduct;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureDataProduct = fetchProduct();
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 6, vsync: this);
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 20.0),
            //Back button , logo and profile
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/menu_variant.png',
                  width: 20.0,
                ),
                Image.asset('assets/images/Logo.png'),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfilePage()));
                    },
                    padding: const EdgeInsets.all(0.0),
                    icon: const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/profile_pic.png'),
                    ))
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hi, Andrea',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'What are you looking for\ntoday?',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 24),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SearchPage()));
                            },
                            child: const DisableSearchBar()),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
              flex: 6,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                    color: Colors.grey[200]),
                child: Column(
                  children: [
                    Flexible(
                      child: Column(children: [
                        Padding(
                            padding:
                                const EdgeInsets.fromLTRB(24.0, 10.0, 0, 0),
                            child: Container(
                                child: TabBar(
                              isScrollable: true,
                              controller: _tabController,
                              indicatorColor: Colors.green,
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicator: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: Color.fromARGB(255, 10, 207, 131),
                              ),
                              labelColor: Colors.white,
                              unselectedLabelColor: Colors.grey,
                              labelPadding:
                                  EdgeInsets.fromLTRB(16.0, 5.0, 16.0, 5.0),
                              tabs: const [
                                Text('Headphones'),
                                Text('Earbuds'),
                                Text('Cables'),
                                Text('Phones'),
                                Text('Tabs'),
                                Text('Laptop')
                              ],
                            ))),
                        Expanded(
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(24.0, 15.0, 0, 0),
                                child: Container(
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Container(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15.0),
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10.0)),
                                                    color: Colors.white),
                                                width: 310.0,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 5.0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Text(
                                                            'TMA-2',
                                                            style: TextStyle(
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                          const Text(
                                                            'Modular',
                                                            style: TextStyle(
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                          const Text(
                                                            'Headphone',
                                                            style: TextStyle(
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 5.0),
                                                            child: TextButton(
                                                                onPressed:
                                                                    () {},
                                                                child:
                                                                    const Text(
                                                                  'Shop now',
                                                                  style: TextStyle(
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          10,
                                                                          207,
                                                                          131)),
                                                                )),
                                                            /*Text(
                                                              'Shop now',
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          10,
                                                                          207,
                                                                          131)),
                                                            ),*/
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Column(
                                                      children: [
                                                        const SizedBox(
                                                            height: 20.0),
                                                        Image.asset(
                                                          'assets/images/product2.png',
                                                          width: 117.0,
                                                          height: 135.0,
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15.0),
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10.0)),
                                                    color: Colors.white),
                                                width: 310.0,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 5.0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: const [
                                                          Text(
                                                            'TMA-2',
                                                            style: TextStyle(
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                          Text(
                                                            'Modular',
                                                            style: TextStyle(
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                          Text(
                                                            'Headphone',
                                                            style: TextStyle(
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 5.0),
                                                            child: Text(
                                                              'Shop now',
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          10,
                                                                          207,
                                                                          131)),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Column(
                                                      children: [
                                                        const SizedBox(
                                                            height: 20.0),
                                                        Image.asset(
                                                          'assets/images/product2.png',
                                                          width: 117.0,
                                                          height: 135.0,
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15.0),
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10.0)),
                                                    color: Colors.white),
                                                width: 310.0,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 5.0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: const [
                                                          Text(
                                                            'TMA-2',
                                                            style: TextStyle(
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                          Text(
                                                            'Modular',
                                                            style: TextStyle(
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                          Text(
                                                            'Headphone',
                                                            style: TextStyle(
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 5.0),
                                                            child: Text(
                                                              'Shop now',
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          10,
                                                                          207,
                                                                          131)),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Column(
                                                      children: [
                                                        const SizedBox(
                                                            height: 20.0),
                                                        Image.asset(
                                                          'assets/images/product2.png',
                                                          width: 117.0,
                                                          height: 135.0,
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Text("Headband"),
                              const Text('Earpads'),
                              const Text('Cable'),
                              const Text('Movies'),
                              const Text('EarPhone')
                            ],
                          ),
                        )
                      ]),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Featured Products',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  'Sea All',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color.fromARGB(255, 127, 127, 127)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Expanded(
                                child: FutureBuilder<List<ProductModel>>(
                                    future: futureDataProduct,
                                    builder: (context, snapshot) {
                                      if (snapshot.hasData) {
                                        List<ProductModel> productmodel =
                                            snapshot.data!;
                                        return ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: productmodel.length,
                                            itemBuilder:
                                                (BuildContext context, index) {
                                              if (productmodel[index]
                                                      .featured ==
                                                  false) {
                                                // Featured product items
                                                return GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                ProductDetails(
                                                                    product:
                                                                        productmodel[
                                                                            index])));
                                                  },
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        0, 0, 15.0, 20.0),
                                                    child: Container(
                                                      width: 155.0,
                                                      decoration: const BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10.0)),
                                                          color: Colors.white),
                                                      child: Column(
                                                        children: [
                                                          Image.network(
                                                            productmodel[index]
                                                                .images[0]
                                                                .src,
                                                            height: 125.0,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10.0),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    productmodel[
                                                                            index]
                                                                        .name,
                                                                    style: const TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w400)),
                                                                Text(
                                                                    'USD ' +
                                                                        productmodel[index]
                                                                            .price,
                                                                    style: const TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w700)),
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              } else {}
                                              return Text('');
                                            });
                                      } else if (snapshot.hasError) {
                                        return Text('${snapshot.error}');
                                      }
                                      return Text('');
                                    }))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    ));
  }
}
