import 'package:car_play/api/rest_api.dart';
import 'package:car_play/model/cart.dart';
import 'package:car_play/model/cartProvider.dart';
import 'package:car_play/model/product.dart';
import 'package:car_play/model/product_reviews.dart';
import 'package:car_play/screens/ShoppingCart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_html/flutter_html.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({super.key, required this.product});

  final ProductModel product;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late Future<List<ProductReviewsModel>> futureProductReviews;
  final cart = CartProvider();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureProductReviews = fetchAllProductReviews();
  }

  @override
  Widget build(BuildContext context) {
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
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ShoppingCart()));
                                },
                                child: Image.asset(
                                    'assets/images/shopping_cart.png'))
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
                          children: [
                            Text(
                              'USD ' + widget.product.price,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 10, 207, 131)),
                            ),
                            SizedBox(height: 6.0),
                            Text(
                              widget.product.name,
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
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 391,
                                child: ListView.builder(
                                  itemCount: widget.product.images.length,
                                  itemBuilder: (BuildContext context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 0, 0, 0),
                                      child: Container(
                                        width: 285.0,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10.0)),
                                            color: Colors.grey[200]),
                                        child: Image.network(
                                            widget.product.images[index].src),
                                      ),
                                    );
                                  },
                                  scrollDirection: Axis.horizontal,
                                ),
                              ),
                              SizedBox(
                                height: 40.0,
                              ),
                              Container(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Html(
                                      data: widget.product.description,
                                      tagsList: Html.tags,
                                      style: {
                                        "p": Style(
                                            fontSize: FontSize.medium,
                                            fontWeight: FontWeight.w400)
                                      },
                                    ),
                                    const SizedBox(
                                      height: 12.0,
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
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20.0, 20.0, 0, 0),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Reviews (${widget.product.rating_count})',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        height: 25.0,
                                      ),
                                      SizedBox(
                                        height: 300.0,
                                        child:
                                            FutureBuilder<
                                                    List<ProductReviewsModel>>(
                                                future: futureProductReviews,
                                                builder: (context, snapshot) {
                                                  if (snapshot.hasData) {
                                                    List<ProductReviewsModel>
                                                        productreviesmodel =
                                                        snapshot.data!;
                                                    return ListView.builder(
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            productreviesmodel
                                                                .length,
                                                        itemBuilder:
                                                            (BuildContext
                                                                    context,
                                                                index) {
                                                          if (productreviesmodel[
                                                                      index]
                                                                  .product_id ==
                                                              widget
                                                                  .product.id) {
                                                            return Container(
                                                                child: Column(
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      right:
                                                                          23.0),
                                                                  child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Container(
                                                                          child:
                                                                              Row(
                                                                        children: [
                                                                          CircleAvatar(
                                                                              backgroundImage: NetworkImage(productreviesmodel[index].reviewer_avatar_urls.src24)
                                                                              /*AssetImage('assets/images/profile_pic.png'),*/
                                                                              ),
                                                                          Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsets.only(left: 12.0),
                                                                                child: Text(
                                                                                  productreviesmodel[index].reviewer,
                                                                                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsets.only(left: 12.0),
                                                                                child: Row(
                                                                                  children: [
                                                                                    SizedBox(
                                                                                      width: 16.0,
                                                                                      child: Image.asset('assets/images/star.png'),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      width: 16.0,
                                                                                      child: Image.asset('assets/images/star.png'),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      width: 16.0,
                                                                                      child: Image.asset('assets/images/star.png'),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      width: 16.0,
                                                                                      child: Image.asset('assets/images/star.png'),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      width: 16.0,
                                                                                      child: Image.asset('assets/images/empty_star.png'),
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
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight: FontWeight
                                                                                .w400,
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                127,
                                                                                127,
                                                                                127)),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            50.0),
                                                                    child: Html(
                                                                      data: productreviesmodel[
                                                                              index]
                                                                          .review,
                                                                      tagsList:
                                                                          Html.tags,
                                                                      style: {
                                                                        "p": Style(
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            fontSize: FontSize.medium)
                                                                      },
                                                                    )),
                                                                const SizedBox(
                                                                  height: 10.0,
                                                                ),
                                                              ],
                                                            ));
                                                          }
                                                          return Text('');
                                                        });
                                                  } else if (snapshot
                                                      .hasError) {
                                                    return Text(
                                                        '${snapshot.error}');
                                                  }
                                                  return Text('');
                                                }),
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
                                color: const Color.fromARGB(255, 246, 246, 246),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 28.0, 20.0, 20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Another Product',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text(
                                            'Sea All',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromARGB(
                                                    255, 127, 127, 127)),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 190.0,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15.0),
                                              child: Container(
                                                width: 155.0,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
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
                                                              FontWeight.w400),
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
                                              padding: const EdgeInsets.only(
                                                  right: 15.0),
                                              child: Container(
                                                width: 155.0,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
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
                                                              FontWeight.w400),
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
                                              padding: const EdgeInsets.only(
                                                  right: 15.0),
                                              child: Container(
                                                width: 155.0,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
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
                                                              FontWeight.w400),
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
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Consumer<Carts>(
                                      builder: (context, value, child) =>
                                          InkWell(
                                        onTap: () {
                                          value.add(widget.product);
                                        },
                                        child: Text('Add Product'),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
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
