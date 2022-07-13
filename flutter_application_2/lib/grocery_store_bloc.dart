import 'package:flutter/material.dart';
import 'package:flutter_application_2/grpcery_product.dart';

enum GroceryState {
  normal,
  details,
  cart,
}

class GroceryStoreBloc with ChangeNotifier {
  GroceryState groceryState = GroceryState.normal;
  List<GroceryProduct> catalog = List.unmodifiable(grpceryProducts);
  List<GroceryProductItem> cart = [];

  void changeToNormal() {
    groceryState = GroceryState.normal;
    notifyListeners();
  }

  void changeToCart() {
    groceryState = GroceryState.cart;
    notifyListeners();
  }

  void addProduct(GroceryProduct product) {
    cart.add(GroceryProductItem(product: product));
    notifyListeners();
  }
}

class GroceryProductItem {
  GroceryProductItem({this.quantity = 1, required this.product});
  int quantity;
  final GroceryProduct product;

  void add() {}
  void subtract() {}
}
