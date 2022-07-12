import 'package:flutter/material.dart';
import 'package:flutter_application_2/grpcery_product.dart';

class GroceryStoreDetails extends StatelessWidget {
  const GroceryStoreDetails({Key? key, required this.product})
      : super(key: key);

  final GroceryProduct product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Sale: ${product.name}')),
      body: Center(
          child: Image.asset(
        product.image,
        fit: BoxFit.cover,
      )),
    );
  }
}
