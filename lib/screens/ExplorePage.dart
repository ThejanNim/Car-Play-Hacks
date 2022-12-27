import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(alignment: Alignment.centerLeft),
                  child: Image.asset('assets/images/backIcon.png'),
                ),
                Image.asset('assets/images/shopping_cart.png')
              ],
            ),
          ),
          const SizedBox(
            height: 37.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 0, 0, 0),
            child: const Text(
              'Headphone',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 11.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 0, 0, 0),
            child: const Text('TMA Wireless',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700)),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 0, 0, 30.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      border: Border.all(width: 1.0, color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 11.0, 15.0, 11.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/sliders.png'),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('Filter',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25.0,
                ),
                const Text('Popularity',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                const SizedBox(
                  width: 25.0,
                ),
                const Text('Newest',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              ],
            ),
          ),
          Expanded(child:
              ListView.builder(itemBuilder: (BuildContext context, index) {
            return Column(
              children: [],
            );
          }))
        ],
      ),
    ));
  }
}

class ExploreProduct extends StatelessWidget {
  const ExploreProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          color: Colors.white),
      width: 155.0,
      height: 243.0,
      child: Column(
        children: [
          Image.asset('assets/images/product2.png'),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TMA-2 HD Wireless',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(
                  'USD 350',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 13.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                SizedBox(
                    width: 9.0,
                    height: 8.0,
                    child: Image.asset('assets/images/star.png')),
                Text(
                  '4.6',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '86 Reviews',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
