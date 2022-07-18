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
    for (GroceryProductItem item in cart) {
      if (item.product.name == product.name) {
        item.increment();
        notifyListeners();
        return;
      }
    }
    cart.add(GroceryProductItem(product: product));
    notifyListeners();
  }

  void delProduct(GroceryProductItem item) {
    cart.remove(item);
    notifyListeners();
  }

  int totalCartElements() => cart.fold<int>(
      0, (previousValue, element) => previousValue + element.quantity);

  double totalPriceElements() => cart.fold<double>(
      0.0,
      (previousValue, element) =>
          previousValue + (element.quantity * element.product.price));
}

class GroceryProductItem {
  GroceryProductItem({this.quantity = 1, required this.product});
  int quantity;
  final GroceryProduct product;

  //void add() {}
  //void subtract() {}

  void increment() {
    quantity++;
  }

  void decrement() {}
}
