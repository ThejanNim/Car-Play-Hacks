import 'package:car_play/model/product.dart';
import 'package:flutter/material.dart';

class Carts with ChangeNotifier {
  List<ProductModel> lst = [];
  double _totalPrice = 0.0;

  add(ProductModel itemProduct) {
    lst.add(itemProduct);
    _totalPrice += double.parse(itemProduct.price);
    notifyListeners();
  }

  del(ProductModel itemProduct) {
    lst.remove(itemProduct);
    notifyListeners();
  }

  double get totalPrice {
    return _totalPrice;
  }
}
