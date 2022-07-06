import 'package:flutter/material.dart';

const _backgroundColor = Color(0XFFF6F5F2);
const _carBarHeight = 150.0;

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

class GroceryStoreHome extends StatelessWidget {
  const GroceryStoreHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context)
        .size; //Variable para obtener el tamaño de la pantalla
    return Scaffold(
      body: Column(
        children: [
          _AppBarGrocery(),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                    left: 0,
                    right: 0,
                    top: -_carBarHeight,
                    height: size.height - kToolbarHeight,
                    child: Container(
                      color: Colors.white,
                    )),
                Positioned(
                    left: 0,
                    right: 0,
                    top: 500,
                    height: size.height - kToolbarHeight,
                    child: Container(
                      color: Colors.red,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBarGrocery extends StatelessWidget {
  const _AppBarGrocery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      margin: EdgeInsets.only(top: 60.0),
      color: _backgroundColor,
      child: Row(
        children: [
          BackButton(
            color: Colors.black,
          ),
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
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}
