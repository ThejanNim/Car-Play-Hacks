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
                        Image.asset('images/sliders.png'),
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
          Expanded(child: LayoutBuilder(builder:
              (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0)),
                          color: Colors.grey[200]),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                          ),
                        ],
                      ),
                    )));
          }))
        ],
      ),
    ));
  }
}
