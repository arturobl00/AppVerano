import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.black,
        child: GridView.extent(
          maxCrossAxisExtent: 200,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Imagen1()));
                },
                child: Image.asset("assets/1.jpg")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Imagen2()));
                },
                child: Image.asset("assets/2.jpg")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Imagen3()));
                },
                child: Image.asset("assets/3.jpg")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Imagen4()));
                },
                child: Image.asset("assets/4.jpg")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Imagen5()));
                },
                child: Image.asset("assets/5.jpg")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Imagen6()));
                },
                child: Image.asset("assets/6.jpg")),
          ],
        ),
      ),
    );
  }
}

class Imagen1 extends StatelessWidget {
  const Imagen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Image.asset("assets/1.jpg")),
          Container(
            margin: EdgeInsets.all(30.0),
            child: Text(
                "Recetas de comidas para ni??os. Se acerca la hora de comer y, como cada d??a, nos surge la t??pica pregunta: ????Qu?? comemos hoy???. Cuando vivimos solos o con nuestra pareja, a veces la soluci??n es preparar cualquier plato r??pido para salir del paso. Pero si adem??s, tenemos hijos, la soluci??n se complica un poco. Necesitamos preparar un men?? acorde a sus necesidades nutritivas. Es por ello, que como padres, necesitamos saber en todo momento cuales son los alimentos que necesitan nuestros hijos seg??n la etapa de crecimiento en que se encuentren y sobre todo, que deben comer para tener una vida saludable. Conocer en todo momento las necesidades nutritivas de nuestros hijos es bastante complicado, sobre todo si somos padres primerizos. Por ello, recurrimos a Internet y en muchas ocasiones, buscamos recetas de comidas saludables para que coman nuestros ni??os cada d??a."),
          ),
        ],
      )),
    );
  }
}

class Imagen2 extends StatelessWidget {
  const Imagen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Image.asset("assets/2.jpg"))),
    );
  }
}

class Imagen3 extends StatelessWidget {
  const Imagen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Image.asset("assets/3.jpg"))),
    );
  }
}

class Imagen4 extends StatelessWidget {
  const Imagen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Image.asset("assets/4.jpg"))),
    );
  }
}

class Imagen5 extends StatelessWidget {
  const Imagen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Image.asset("assets/5.jpg"))),
    );
  }
}

class Imagen6 extends StatelessWidget {
  const Imagen6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Image.asset("assets/6.jpg"))),
    );
  }
}
