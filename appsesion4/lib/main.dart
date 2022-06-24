import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Final Semana 1',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/montaña.png"),
                const TitleSection(),
                const Barra(),
                Container(
                  margin:
                      const EdgeInsets.only(top: 20.0, left: 40.0, right: 40.0),
                  child: const Text(
                    'A continuación, diagrama cada fila. La primera fila, llamada sección Título, tiene 3 hijos: una columna de texto, un icono de estrella y un número. Su primer hijo, la columna, contiene 2 líneas de texto. Esa primera columna ocupa mucho espacio, por lo que debe estar envuelta en un widget Expanded.',
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40.0),
      child: (Row(
        //El mainAxisAlimento alinea horizontal
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //El Expanded hace que se tome el maximo espacio disponible del elemento de agrupa
          Expanded(
            child: Column(
              //crossAxisAligment alinea vertical
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Oeschinen Lake Campground",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Kandersteg, Switzerland",
                  style: TextStyle(color: Colors.black26),
                )
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text("41")
        ],
      )),
    );
  }
}

class Barra extends StatelessWidget {
  const Barra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Container(
      margin: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: const [
                Icon(
                  Icons.call,
                  color: Colors.blueAccent,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "CALL",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: const [
                Icon(
                  Icons.send,
                  color: Colors.blueAccent,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "ROUTE",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: const [
                Icon(
                  Icons.share,
                  color: Colors.blueAccent,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "SHARE",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
