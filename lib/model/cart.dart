import 'package:car_play/model/product.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<ProductModel> _products = [];
  dynamic _totalPrice = 0.0;

  void add(ProductModel item) {
    _products.add(item);
    _totalPrice += item.price;
    notifyListeners();
  }

  void productRemove(ProductModel item) {
    _totalPrice -= item.price;
    _products.remove(item);
    notifyListeners();
  }

  int get productCount {
    return _products.length;
  }

  dynamic get totalPrice {
    return _totalPrice;
  }

  List<ProductModel> get cartItems {
    return _products;
  }
}
