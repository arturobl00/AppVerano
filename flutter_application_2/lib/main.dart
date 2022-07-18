import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/grocery_provider.dart';
import 'package:flutter_application_2/grocery_store_bloc.dart';
import 'package:flutter_application_2/grocery_store_cart.dart';
import 'grocery_store_list.dart';

const _backgroundColor = Color(0XFFF6F5F2);
//Alto del los fondos blanco y negro
const _carBarHeight = 150.0;
//Tiempo de transicion en la animación
const _panelTransition = Duration(milliseconds: 500);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const GroceryStoreHome(),
    );
  }
}

class GroceryStoreHome extends StatefulWidget {
  const GroceryStoreHome({Key? key}) : super(key: key);

  @override
  State<GroceryStoreHome> createState() => _GroceryStoreHomeState();
}

class _GroceryStoreHomeState extends State<GroceryStoreHome> {
  //Activador de estados
  final bloc = GroceryStoreBloc();

  //Validacion de la posicion del dedo al subir y bajar
  void _onVerticalGesture(DragUpdateDetails details) {
    // ignore: avoid_print
    print(details.primaryDelta);
    if (details.primaryDelta! < -2) {
      bloc.changeToCart();
    } else if (details.primaryDelta! > 2) {
      bloc.changeToNormal();
    }
  }

  //Posicion Top cuando el estado es normal o cart panel blanco
  _getTopForWhitePanel(GroceryState state, Size size) {
    if (state == GroceryState.normal) {
      return -_carBarHeight;
    } else if (state == GroceryState.cart) {
      return -(size.height - kToolbarHeight - _carBarHeight / 2);
    }
  }

  //Posicion Top cuando el estado es normal o cart panel negro
  _getTopForBlackPanel(GroceryState state, Size size) {
    if (state == GroceryState.normal) {
      return size.height - kToolbarHeight - _carBarHeight;
    } else if (state == GroceryState.cart) {
      return _carBarHeight / 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context)
        .size; //Variable para obtener el tamaño de la pantalla
    return GroceryProvider(
      bloc: bloc,
      child: AnimatedBuilder(
          animation: bloc,
          builder: (context, _) {
            return Scaffold(
              backgroundColor: Colors.black,
              body: Column(
                children: [
                  const _AppBarGrocery(),
                  Expanded(
                    child: Stack(
                      children: [
                        AnimatedPositioned(
                          duration: _panelTransition,
                          left: 0,
                          right: 0,
                          top: _getTopForWhitePanel(
                              bloc.groceryState, size), //Cambio de estado
                          height: size.height - kToolbarHeight,
                          child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  )),
                              child: const GroceryStoreList()),
                        ),
                        AnimatedPositioned(
                            duration: _panelTransition,
                            //     curve: Curves.decelerate,
                            left: 0,
                            right: 0,
                            top: _getTopForBlackPanel(
                                bloc.groceryState, size), //Cambio de estado
                            height: size.height,
                            child: GestureDetector(
                              onVerticalDragUpdate: _onVerticalGesture,
                              child: Container(
                                color: Colors.black,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20.0, left: 10.0),
                                      child: AnimatedSwitcher(
                                        duration: _panelTransition,
                                        child: bloc.groceryState ==
                                                GroceryState.normal
                                            ? Row(
                                                children: [
                                                  // ignore: prefer_const_constructors
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 8.0),
                                                    child: const Text(
                                                      "Cart",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20.0),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child:
                                                        SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: Row(
                                                          children:
                                                              List.generate(
                                                                  bloc.cart
                                                                      .length,
                                                                  (index) =>
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.symmetric(horizontal: 8.0),
                                                                        child: Stack(
                                                                            children: [
                                                                              Hero(
                                                                                tag: 'list_${bloc.cart[index].product.name}details',
                                                                                child: CircleAvatar(
                                                                                  backgroundImage: AssetImage(bloc.cart[index].product.image),
                                                                                ),
                                                                              ),
                                                                              Positioned(
                                                                                right: 0,
                                                                                child: CircleAvatar(
                                                                                  radius: 10,
                                                                                  backgroundColor: Colors.red,
                                                                                  child: Text(
                                                                                    bloc.cart[index].quantity.toString(),
                                                                                    style: const TextStyle(color: Colors.white),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ]),
                                                                      ))),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10.0,
                                                            right: 10.0),
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Color.fromARGB(255,
                                                              234, 182, 11),
                                                      child: Text(
                                                        bloc
                                                            .totalCartElements()
                                                            .toString(),
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )
                                            : const SizedBox.shrink(),
                                      ),
                                    ),
                                    Expanded(child: GroceryStoreCart()),
                                    //Spacer(),
                                    //Placeholder(),
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

class _AppBarGrocery extends StatelessWidget {
  const _AppBarGrocery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      margin: const EdgeInsets.only(top: 60.0),
      color: _backgroundColor,
      child: Row(
        children: const [
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Text(
            "Fruits and vegetables",
            style: TextStyle(
              color: Colors.black,
            ),
          )),
        ],
      ),
    );
  }
}
