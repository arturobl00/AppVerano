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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const Gcount(),
    );
  }
}

class Gcount extends StatelessWidget {
  const Gcount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Crea un espacio de galeria autommatico
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        children: [
          ElevatedButton(
            child: Image.asset('assets/1.jpg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Foto1()),
              );
            },
          ),
          ElevatedButton(
            child: Image.asset('assets/2.jpg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Foto2()),
              );
            },
          ),
          ElevatedButton(
            child: Image.asset('assets/3.jpg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Foto3()),
              );
            },
          ),
          ElevatedButton(
            child: Image.asset('assets/4.jpg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Foto4()),
              );
            },
          ),
          ElevatedButton(
            child: Image.asset('assets/5.jpg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Foto5()),
              );
            },
          ),
          ElevatedButton(
            child: Image.asset('assets/6.jpg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Foto6()),
              );
            },
          ),
          ElevatedButton(
            child: Image.asset('assets/7.jpg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Foto7()),
              );
            },
          ),
          ElevatedButton(
            child: Image.asset('assets/8.jpg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Foto8()),
              );
            },
          ),
          ElevatedButton(
            child: Image.asset('assets/9.jpg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Foto9()),
              );
            },
          ),
          ElevatedButton(
            child: Image.asset('assets/10.jpg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Foto10()),
              );
            },
          ),
          ElevatedButton(
            child: Image.asset('assets/11.jpg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Foto11()),
              );
            },
          ),
          ElevatedButton(
            child: Image.asset('assets/12.jpg'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Foto12()),
              );
            },
          )
        ],
      ),
    );
  }
}

class Foto1 extends StatelessWidget {
  const Foto1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Foto 1"),
      ),
      body: Center(
        child: Image.asset('assets/1.jpg'),
      ),
    );
  }
}

class Foto2 extends StatelessWidget {
  const Foto2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Foto 2"),
      ),
      body: Center(
        child: Image.asset('assets/2.jpg'),
      ),
    );
  }
}

class Foto3 extends StatelessWidget {
  const Foto3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Foto 3"),
      ),
      body: Center(
        child: Image.asset('assets/3.jpg'),
      ),
    );
  }
}

class Foto4 extends StatelessWidget {
  const Foto4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Foto 4"),
      ),
      body: Center(
        child: Image.asset('assets/4.jpg'),
      ),
    );
  }
}

class Foto5 extends StatelessWidget {
  const Foto5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Foto 5"),
      ),
      body: Center(
        child: Image.asset('assets/5.jpg'),
      ),
    );
  }
}

class Foto6 extends StatelessWidget {
  const Foto6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Foto 6"),
      ),
      body: Center(
        child: Image.asset('assets/6.jpg'),
      ),
    );
  }
}

class Foto7 extends StatelessWidget {
  const Foto7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Foto 7"),
      ),
      body: Center(
        child: Image.asset('assets/7.jpg'),
      ),
    );
  }
}

class Foto8 extends StatelessWidget {
  const Foto8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Foto 8"),
      ),
      body: Center(
        child: Image.asset('assets/8.jpg'),
      ),
    );
  }
}

class Foto9 extends StatelessWidget {
  const Foto9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Foto 9"),
      ),
      body: Center(
        child: Image.asset('assets/9.jpg'),
      ),
    );
  }
}

class Foto10 extends StatelessWidget {
  const Foto10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Foto 10"),
      ),
      body: Center(
        child: Image.asset('assets/10.jpg'),
      ),
    );
  }
}

class Foto11 extends StatelessWidget {
  const Foto11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Foto 11"),
      ),
      body: Center(
        child: Image.asset('assets/11.jpg'),
      ),
    );
  }
}

class Foto12 extends StatelessWidget {
  const Foto12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Foto 12"),
      ),
      body: Center(
        child: Image.asset('assets/12.jpg'),
      ),
    );
  }
}
