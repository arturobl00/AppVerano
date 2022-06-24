import 'package:flutter/material.dart';

void main() {
  runApp(const Sesion2());
}

//Widget principal que incorpora la UI de mi proyecto
class Sesion2 extends StatelessWidget {
  const Sesion2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mi app Sesion2',
        theme: ThemeData(primarySwatch: Colors.green),
        home: const Home2());
  }
}

//Clase para probar el potencial del container
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(
          top: 100.0, bottom: 600.0, left: 50.0, right: 50.0),
      decoration:
          const BoxDecoration(shape: BoxShape.rectangle, color: Colors.blue),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.call),
              Container(child: const Text("LLamada")),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.route),
              Container(child: const Text("Enviar"))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.share),
              Container(child: const Text("Compartir"))
            ],
          )
        ],
      ),
    ));
  }
}

//Clase para mostrar el comportamiento del center
class Home1 extends StatelessWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hola App Layout"),
        ),
        body: Image.asset('assets/img1.jpg'));
  }
}

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 340.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Strawberry Pavlova",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'El pastel Pavlova tiene su origen en'
                    '\n'
                    'Rusia, es una gran postre suave y crujuiete'
                    '\n'
                    'ideal para acompañar a cualquier tipo de comida'
                    '\n'
                    'te invitamos a degustarle.',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                        ],
                      ),
                      const Text("170 Reviews")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: const [
                          Icon(Icons.access_alarm),
                          Text("PREP."),
                          Text("25 min")
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.lock_clock),
                          Text("COOK."),
                          Text("1 hr")
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.dinner_dining),
                          Text("FEEDS."),
                          Text("4-5")
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(child: Image.asset("assets/img2.jpg"))
          ],
        ),
      ),
    );
  }
}
