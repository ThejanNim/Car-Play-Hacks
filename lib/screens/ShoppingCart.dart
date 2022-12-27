import 'package:car_play/model/cartProvider.dart';
import 'package:car_play/screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Carts>(
      builder: (context, value, child) => Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 18, 24.0, 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Row(
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
                    const Padding(
                      padding: EdgeInsets.only(right: 2.0),
                      child: Text(
                        'Cart',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Image.asset('assets/images/trash-2.png'))
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: value.lst.length,
                    itemBuilder: (BuildContext context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 70.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.grey[200]),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.network(
                                      value.lst[index].images[0].src),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5.0),
                                        child: Text(
                                          value.lst[index].name,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      Text(
                                        'USD ${value.lst[index].price}',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: SizedBox(
                                              width: 40.0,
                                              height: 30.0,
                                              child: OutlinedButton(
                                                  onPressed: () {},
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0)),
                                                  ),
                                                  child: Image.asset(
                                                      'assets/images/minus.png')),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: SizedBox(
                                              width: 40.0,
                                              height: 30.0,
                                              child: OutlinedButton(
                                                  onPressed: () {},
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0)),
                                                  ),
                                                  child: Image.asset(
                                                      'assets/images/plus.png')),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          )
                        ],
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'total products ${value.lst.length}',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    value.totalPrice.toString(),
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(
                height: 24.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Proceed to Checkout'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      padding: EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
                      backgroundColor: Color.fromARGB(255, 10, 207, 131)),
                ),
              ),
              SizedBox(
                height: 24.0,
              )
            ],
          ),
        )),
      ),
    );
  }
}
