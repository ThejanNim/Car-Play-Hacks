import 'dart:convert';

import 'package:car_play/model/product.dart';
import 'package:http/http.dart' as http;

Future<List<ProductModel>> fetchProduct() async {
  final response = await http.get(Uri.parse(
      'https://store.carplayhacks.com/wp-json/wc/v3/products?consumer_key=ck_2f2a00354092019995c548962470dd831d130331&consumer_secret=cs_a2c284f02edb909326dba17bcfea471b2960dd7a'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => ProductModel.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error');
  }
}
