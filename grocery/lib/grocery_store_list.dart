import 'package:flutter/material.dart';
import 'package:grocery/grocery_provider.dart';

class GroceryStoreList extends StatelessWidget {
  const GroceryStoreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = GroceryProvider.of(context)?.bloc;
    return GridView.builder(
        padding: const EdgeInsets.only(top: 150.0),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisExtent: 350,
            childAspectRatio: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2),
        itemCount: bloc!.catalog.length,
        itemBuilder: (context, index) {
          final product = bloc.catalog[index];
          return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 10.0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        product.image,
                        fit: BoxFit.cover,
                        height: 200,
                        width: 120,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '\$${product.price}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20.0),
                        ),
                      ),
                      Text(
                        product.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 14.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          product.weight,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 14.0),
                        ),
                      )
                    ]),
              ));
        });
    /*return ListView.builder(
        padding: const EdgeInsets.only(top: 150.0),
        itemCount: bloc!.catalog.length,
        itemBuilder: (context, index) {
          final product = bloc.catalog[index];
          return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 10.0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        product.image,
                        fit: BoxFit.cover,
                        height: 100,
                        width: 120,
                      ),
                      Text(
                        '\$${product.price}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0),
                      ),
                      Text(
                        product.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 14.0),
                      ),
                      Text(
                        product.weight,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                            fontSize: 14.0),
                      )
                    ]),
              ));
        });*/
  }
}
