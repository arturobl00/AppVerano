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
        primarySwatch: Colors.orange,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi Proyecto"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text("Mi Titulo"),
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
            ),
            ListTile(
              title: const Text("Item 1"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Item1()));
              },
            ),
            ListTile(
              title: const Text("Item 2"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Item2()));
              },
            ),
            ListTile(
              title: const Text("Item 3"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Item3()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item 1"),
      ),
      body: Center(
        child: Text("Hola soy el Item 1"),
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item 2"),
      ),
      body: Center(
        child: Text("Hola soy el Item 2"),
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item 3"),
      ),
      body: Center(
        child: Text("Hola soy el Item 3"),
      ),
    );
  }
}
