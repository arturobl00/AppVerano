import 'package:flutter/material.dart';
import 'package:flutter_application_2/grocery_provider.dart';
import 'package:flutter_application_2/grocery_store_bloc.dart';

class GroceryStoreCart extends StatelessWidget {
  const GroceryStoreCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = GroceryProvider.of(context)?.bloc;
    return Container(
      margin: const EdgeInsets.only(top: 25.0, left: 10.0, right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Cart",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 350,
            child: ListView.builder(
              itemCount: bloc!.cart.length,
              itemBuilder: (context, index) {
                final item = bloc.cart[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(item.product.image),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(item.quantity.toString()),
                      SizedBox(
                        width: 10,
                      ),
                      Text(item.product.name),
                      SizedBox(
                        width: 10,
                      ),
                      Text("x"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(item.product.price.toStringAsFixed(2) + ' ='),
                      Spacer(),
                      Text((item.product.price * item.quantity)
                          .toStringAsFixed(2)),
                      IconButton(
                          onPressed: () {
                            bloc.delProduct(item);
                          },
                          icon: Icon(Icons.delete))
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              children: [
                const Text(
                  "Total:",
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
                const Spacer(),
                Text(
                  '\$${bloc.totalPriceElements().toStringAsFixed(2)}',
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 234, 182, 11)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(
                        color: Color.fromARGB(255, 234, 182, 11))))),
            onPressed: () {},
            child: const Text(
              'Next',
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          )
        ],
      ),
    );
  }
}
