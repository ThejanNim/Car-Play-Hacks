import 'package:car_play/components/disable_search_bar.dart';
import 'package:car_play/screens/ProductDetails.dart';
import 'package:car_play/screens/ProfilePage.dart';
import 'package:car_play/screens/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:car_play/api/rest_api.dart';
import 'package:car_play/model/product.dart';
import 'package:google_fonts/google_fonts.dart';

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
    //padding 20.0
    var p20 = MediaQuery.of(context).size.height * 0.025;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(24.0, 12.0, 24.0, p20),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
            child: Container(
              /*height: MediaQuery.of(context).size.height * 0.2164705882352941,*/
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Andrea',
                        style: GoogleFonts.dmSans(
                            fontSize: 16.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.2),
                        /*TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),*/
                      ),
                      Text(
                        'What are you looking for\ntoday?',
                        style: GoogleFonts.dmSans(
                            fontSize: 24.0, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height:
                        MediaQuery.of(context).size.height * 0.0294117647058824,
                  ),
                  Container(
                    height:
                        MediaQuery.of(context).size.height * 0.0529411764705882,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SearchPage()));
                        },
                        child: const DisableSearchBar()),
                  ),
                  SizedBox(
                    height:
                        MediaQuery.of(context).size.height * 0.0294117647058824,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                  color: Colors.grey[200]),
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(24.0, p20, 0, p20),
                      child: Container(
                          child: TabBar(
                        isScrollable: true,
                        controller: _tabController,
                        indicatorColor: Colors.green,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Color.fromARGB(255, 10, 207, 131),
                        ),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey,
                        labelPadding: EdgeInsets.fromLTRB(16.0, 1.0, 16.0, 1.0),
                        tabs: const [
                          Text('Headphones'),
                          Text('Earbuds'),
                          Text('Cables'),
                          Text('Phones'),
                          Text('Tabs'),
                          Text('Laptop')
                        ],
                      ))),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.233,
                    child: TabBarView(controller: _tabController, children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24.0, 0, 0, 0),
                        child: Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 15.0),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                            color: Colors.white),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.2094117647058824,
                                        width: 310.0,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  24.0, p20, 0, 0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'TMA-2',
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  Text(
                                                    'Modular',
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  Text(
                                                    'Headphone',
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.0176470588235294),
                                                    child: Text(
                                                      'Shop now',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
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
                                                const SizedBox(height: 20.0),
                                                Image.asset(
                                                  'assets/images/product2.png',
                                                  width: 117.0,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.1588235294117647,
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
                                      padding:
                                          const EdgeInsets.only(right: 15.0),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                            color: Colors.white),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.2094117647058824,
                                        width: 310.0,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  24.0, p20, 0, 0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'TMA-2',
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  Text(
                                                    'Modular',
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  Text(
                                                    'Headphone',
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.0176470588235294),
                                                    child: Text(
                                                      'Shop now',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
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
                                                const SizedBox(height: 20.0),
                                                Image.asset(
                                                  'assets/images/product2.png',
                                                  width: 117.0,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.1588235294117647,
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
                                      padding:
                                          const EdgeInsets.only(right: 15.0),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                            color: Colors.white),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.2094117647058824,
                                        width: 310.0,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  24.0, p20, 0, 0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'TMA-2',
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  Text(
                                                    'Modular',
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  Text(
                                                    'Headphone',
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.0176470588235294),
                                                    child: const Text(
                                                      'Shop now',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
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
                                                const SizedBox(height: 20.0),
                                                Image.asset(
                                                  'assets/images/product2.png',
                                                  width: 117.0,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.1588235294117647,
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
                      Text('Earbuds'),
                      Text('Cables'),
                      Text('Phones'),
                      Text('Tabs'),
                      Text('Laptop')
                    ]),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Featured Products',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Sea All',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 127, 127, 127)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: p20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 24.0),
                          child: Container(
                              height: MediaQuery.of(context).size.height *
                                  0.2788235294117647,
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
                                            if (productmodel[index].featured ==
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
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 15.0, p20),
                                                  child: Container(
                                                    width: 155.0,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.2505882352941176,
                                                    decoration: const BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.0)),
                                                        color: Colors.white),
                                                    child: Column(
                                                      children: [
                                                        Image.network(
                                                          productmodel[index]
                                                              .images[0]
                                                              .src,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.1470588235294118,
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
                                                                          FontWeight
                                                                              .w400)),
                                                              Text(
                                                                  'USD ' +
                                                                      productmodel[
                                                                              index]
                                                                          .price,
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700)),
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
                                  })),
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
    ));
  }
}
