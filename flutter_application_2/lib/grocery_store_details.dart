import 'package:flutter/material.dart';
import 'package:flutter_application_2/grpcery_product.dart';

class GroceryStoreDetails extends StatefulWidget {
  const GroceryStoreDetails(
      {Key? key, required this.product, required this.onProductAdded})
      : super(key: key);

  final GroceryProduct product;
  final VoidCallback onProductAdded;

  @override
  State<GroceryStoreDetails> createState() => _GroceryStoreDetailsState();
}

class _GroceryStoreDetailsState extends State<GroceryStoreDetails> {
  String heroTag = '';
  void _addToCart(BuildContext context) {
    //Siempre que queremos cambiar el valor a una constante
    setState(() {
      heroTag = 'details';
    });

    widget.onProductAdded();
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const BackButton(color: Colors.black),
          backgroundColor: Colors.white,
        ),
        body: ListView(children: [
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: 'list_${widget.product.name}$heroTag',
                    child: Center(
                      child: Image.asset(
                        widget.product.image,
                        fit: BoxFit.cover,
                        height: 350,
                        width: 300,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1.0, left: 10.0),
                    child: Text(widget.product.name,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.black)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 10.0),
                    child: Text(widget.product.weight,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.black54)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                    child: Text(
                        '\$${widget.product.price}', //Cambio por que es numero en un string
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.black)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 10.0),
                    child: Text(
                      "About the product",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                    child: Text(
                      widget.product.description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 14.0, color: Colors.black54),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 0.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: FloatingActionButton(
                            backgroundColor: Colors.grey[200],
                            onPressed: () {},
                            child: const Icon(
                              Icons.favorite_border,
                              size: 35,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 4,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(255, 234, 182, 11)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 234, 182, 11))))),
                              onPressed: () {
                                _addToCart(context);
                              },
                              child: const Text(
                                'Add to Cart',
                                style: TextStyle(color: Colors.black),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ]));
  }
}


/*
Center(
          child: Hero(
        tag: 'list_${product.name}',
        child: Image.asset(
          product.image,
          fit: BoxFit.cover,
        ),
      )),
*/