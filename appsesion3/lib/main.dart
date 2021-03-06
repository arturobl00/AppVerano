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
        primarySwatch: Colors.blue,
      ),
      home: const Gextend(),
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
        crossAxisCount: 5,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        children: [
          Image.asset('assets/1.jpg'),
          Image.asset('assets/2.jpg'),
          Image.asset('assets/3.jpg'),
          Image.asset('assets/4.jpg'),
          Image.asset('assets/5.jpg'),
          Image.asset('assets/6.jpg'),
          Image.asset('assets/7.jpg'),
          Image.asset('assets/8.jpg'),
          Image.asset('assets/9.jpg'),
          Image.asset('assets/10.jpg'),
          Image.asset('assets/11.jpg'),
          Image.asset('assets/12.jpg'),
          Image.asset('assets/1.jpg'),
          Image.asset('assets/2.jpg'),
          Image.asset('assets/3.jpg'),
          Image.asset('assets/4.jpg'),
          Image.asset('assets/5.jpg'),
          Image.asset('assets/6.jpg'),
          Image.asset('assets/7.jpg'),
          Image.asset('assets/8.jpg'),
          Image.asset('assets/9.jpg'),
          Image.asset('assets/10.jpg'),
          Image.asset('assets/11.jpg'),
          Image.asset('assets/12.jpg'),
          Image.asset('assets/1.jpg'),
          Image.asset('assets/2.jpg'),
          Image.asset('assets/3.jpg'),
          Image.asset('assets/4.jpg'),
          Image.asset('assets/5.jpg'),
          Image.asset('assets/6.jpg'),
          Image.asset('assets/7.jpg'),
          Image.asset('assets/8.jpg'),
          Image.asset('assets/9.jpg'),
          Image.asset('assets/10.jpg'),
          Image.asset('assets/11.jpg'),
          Image.asset('assets/12.jpg'),
          Image.asset('assets/1.jpg'),
          Image.asset('assets/2.jpg'),
          Image.asset('assets/3.jpg'),
          Image.asset('assets/4.jpg'),
          Image.asset('assets/5.jpg'),
          Image.asset('assets/6.jpg'),
          Image.asset('assets/7.jpg'),
          Image.asset('assets/8.jpg'),
          Image.asset('assets/9.jpg'),
          Image.asset('assets/10.jpg'),
          Image.asset('assets/11.jpg'),
          Image.asset('assets/12.jpg'),
          Image.asset('assets/1.jpg'),
          Image.asset('assets/2.jpg'),
          Image.asset('assets/3.jpg'),
          Image.asset('assets/4.jpg'),
          Image.asset('assets/5.jpg'),
          Image.asset('assets/6.jpg'),
          Image.asset('assets/7.jpg'),
          Image.asset('assets/8.jpg'),
          Image.asset('assets/9.jpg'),
          Image.asset('assets/10.jpg'),
          Image.asset('assets/11.jpg'),
          Image.asset('assets/12.jpg'),
          Image.asset('assets/1.jpg'),
          Image.asset('assets/2.jpg'),
          Image.asset('assets/3.jpg'),
          Image.asset('assets/4.jpg'),
          Image.asset('assets/5.jpg'),
          Image.asset('assets/6.jpg'),
          Image.asset('assets/7.jpg'),
          Image.asset('assets/8.jpg'),
          Image.asset('assets/9.jpg'),
          Image.asset('assets/10.jpg'),
          Image.asset('assets/11.jpg'),
          Image.asset('assets/12.jpg'),
          Image.asset('assets/1.jpg'),
          Image.asset('assets/2.jpg'),
          Image.asset('assets/3.jpg'),
          Image.asset('assets/4.jpg'),
          Image.asset('assets/5.jpg'),
          Image.asset('assets/6.jpg'),
          Image.asset('assets/7.jpg'),
          Image.asset('assets/8.jpg'),
          Image.asset('assets/9.jpg'),
          Image.asset('assets/10.jpg'),
          Image.asset('assets/11.jpg'),
          Image.asset('assets/12.jpg'),
          Image.asset('assets/1.jpg'),
          Image.asset('assets/2.jpg'),
          Image.asset('assets/3.jpg'),
          Image.asset('assets/4.jpg'),
          Image.asset('assets/5.jpg'),
          Image.asset('assets/6.jpg'),
          Image.asset('assets/7.jpg'),
          Image.asset('assets/8.jpg'),
          Image.asset('assets/9.jpg'),
          Image.asset('assets/10.jpg'),
          Image.asset('assets/11.jpg'),
          Image.asset('assets/12.jpg'),
          Image.asset('assets/1.jpg'),
          Image.asset('assets/2.jpg'),
          Image.asset('assets/3.jpg'),
          Image.asset('assets/4.jpg'),
          Image.asset('assets/5.jpg'),
          Image.asset('assets/6.jpg'),
          Image.asset('assets/7.jpg'),
          Image.asset('assets/8.jpg'),
          Image.asset('assets/9.jpg'),
          Image.asset('assets/10.jpg'),
          Image.asset('assets/11.jpg'),
          Image.asset('assets/12.jpg'),
          Image.asset('assets/1.jpg'),
          Image.asset('assets/2.jpg'),
          Image.asset('assets/3.jpg'),
          Image.asset('assets/4.jpg'),
          Image.asset('assets/5.jpg'),
          Image.asset('assets/6.jpg'),
          Image.asset('assets/7.jpg'),
          Image.asset('assets/8.jpg'),
          Image.asset('assets/9.jpg'),
          Image.asset('assets/10.jpg'),
          Image.asset('assets/11.jpg'),
          Image.asset('assets/12.jpg'),
          Image.asset('assets/1.jpg'),
          Image.asset('assets/2.jpg'),
          Image.asset('assets/3.jpg'),
          Image.asset('assets/4.jpg'),
          Image.asset('assets/5.jpg'),
          Image.asset('assets/6.jpg'),
          Image.asset('assets/7.jpg'),
          Image.asset('assets/8.jpg'),
          Image.asset('assets/9.jpg'),
          Image.asset('assets/10.jpg'),
          Image.asset('assets/11.jpg'),
          Image.asset('assets/12.jpg'),
          Image.asset('assets/1.jpg'),
          Image.asset('assets/2.jpg'),
          Image.asset('assets/3.jpg'),
          Image.asset('assets/4.jpg'),
          Image.asset('assets/5.jpg'),
          Image.asset('assets/6.jpg'),
          Image.asset('assets/7.jpg'),
          Image.asset('assets/8.jpg'),
          Image.asset('assets/9.jpg'),
          Image.asset('assets/10.jpg'),
          Image.asset('assets/11.jpg'),
          Image.asset('assets/12.jpg'),
        ],
      ),
    );
  }
}

class Gextend extends StatelessWidget {
  const Gextend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Crea un espacio de galeria autommatico
      body: Container(
        color: Colors.green,
        child: GridView.extent(
            maxCrossAxisExtent: 380,
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 5.0,
            children: [
              Stack(
                  //fit: StackFit.expand,
                  alignment: AlignmentDirectional.center,
                  children: [
                    Image.asset('assets/2.jpg'),
                    const Positioned(
                        top: 160.0,
                        left: 40.0,
                        child: Text(
                          "Dame un Like",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold),
                        )),
                    const Positioned(
                        top: 158.0, left: 130.0, child: Icon(Icons.handshake)),
                  ]),
              Image.asset('assets/2.jpg'),
              Image.asset('assets/2.jpg'),
              Image.asset('assets/3.jpg'),
              Image.asset('assets/4.jpg'),
              Image.asset('assets/5.jpg'),
              Image.asset('assets/6.jpg'),
              Image.asset('assets/7.jpg'),
              Image.asset('assets/8.jpg'),
              Image.asset('assets/9.jpg'),
              Image.asset('assets/10.jpg'),
              Image.asset('assets/11.jpg'),
              Image.asset('assets/12.jpg'),
              Image.asset('assets/1.jpg'),
              Image.asset('assets/2.jpg'),
              Image.asset('assets/3.jpg'),
              Image.asset('assets/4.jpg'),
              Image.asset('assets/5.jpg'),
              Image.asset('assets/6.jpg'),
              Image.asset('assets/7.jpg'),
              Image.asset('assets/8.jpg'),
              Image.asset('assets/9.jpg'),
              Image.asset('assets/10.jpg'),
              Image.asset('assets/11.jpg'),
              Image.asset('assets/12.jpg'),
              Image.asset('assets/1.jpg'),
              Image.asset('assets/2.jpg'),
              Image.asset('assets/3.jpg'),
              Image.asset('assets/4.jpg'),
              Image.asset('assets/5.jpg'),
              Image.asset('assets/6.jpg'),
              Image.asset('assets/7.jpg'),
              Image.asset('assets/8.jpg'),
              Image.asset('assets/9.jpg'),
              Image.asset('assets/10.jpg'),
              Image.asset('assets/11.jpg'),
              Image.asset('assets/12.jpg'),
              Image.asset('assets/1.jpg'),
              Image.asset('assets/2.jpg'),
              Image.asset('assets/3.jpg'),
              Image.asset('assets/4.jpg'),
              Image.asset('assets/5.jpg'),
              Image.asset('assets/6.jpg'),
              Image.asset('assets/7.jpg'),
              Image.asset('assets/8.jpg'),
              Image.asset('assets/9.jpg'),
              Image.asset('assets/10.jpg'),
              Image.asset('assets/11.jpg'),
              Image.asset('assets/12.jpg'),
              Image.asset('assets/1.jpg'),
              Image.asset('assets/2.jpg'),
              Image.asset('assets/3.jpg'),
              Image.asset('assets/4.jpg'),
              Image.asset('assets/5.jpg'),
              Image.asset('assets/6.jpg'),
              Image.asset('assets/7.jpg'),
              Image.asset('assets/8.jpg'),
              Image.asset('assets/9.jpg'),
              Image.asset('assets/10.jpg'),
              Image.asset('assets/11.jpg'),
              Image.asset('assets/12.jpg'),
              Image.asset('assets/1.jpg'),
              Image.asset('assets/2.jpg'),
              Image.asset('assets/3.jpg'),
              Image.asset('assets/4.jpg'),
              Image.asset('assets/5.jpg'),
              Image.asset('assets/6.jpg'),
              Image.asset('assets/7.jpg'),
              Image.asset('assets/8.jpg'),
              Image.asset('assets/9.jpg'),
              Image.asset('assets/10.jpg'),
              Image.asset('assets/11.jpg'),
              Image.asset('assets/12.jpg'),
              Image.asset('assets/1.jpg'),
              Image.asset('assets/2.jpg'),
              Image.asset('assets/3.jpg'),
              Image.asset('assets/4.jpg'),
              Image.asset('assets/5.jpg'),
              Image.asset('assets/6.jpg'),
              Image.asset('assets/7.jpg'),
              Image.asset('assets/8.jpg'),
              Image.asset('assets/9.jpg'),
              Image.asset('assets/10.jpg'),
              Image.asset('assets/11.jpg'),
              Image.asset('assets/12.jpg'),
              Image.asset('assets/1.jpg'),
              Image.asset('assets/2.jpg'),
              Image.asset('assets/3.jpg'),
              Image.asset('assets/4.jpg'),
              Image.asset('assets/5.jpg'),
              Image.asset('assets/6.jpg'),
              Image.asset('assets/7.jpg'),
              Image.asset('assets/8.jpg'),
              Image.asset('assets/9.jpg'),
              Image.asset('assets/10.jpg'),
              Image.asset('assets/11.jpg'),
              Image.asset('assets/12.jpg'),
              Image.asset('assets/1.jpg'),
              Image.asset('assets/2.jpg'),
              Image.asset('assets/3.jpg'),
              Image.asset('assets/4.jpg'),
              Image.asset('assets/5.jpg'),
              Image.asset('assets/6.jpg'),
              Image.asset('assets/7.jpg'),
              Image.asset('assets/8.jpg'),
              Image.asset('assets/9.jpg'),
              Image.asset('assets/10.jpg'),
              Image.asset('assets/11.jpg'),
              Image.asset('assets/12.jpg'),
              Image.asset('assets/1.jpg'),
              Image.asset('assets/2.jpg'),
              Image.asset('assets/3.jpg'),
              Image.asset('assets/4.jpg'),
              Image.asset('assets/5.jpg'),
              Image.asset('assets/6.jpg'),
              Image.asset('assets/7.jpg'),
              Image.asset('assets/8.jpg'),
              Image.asset('assets/9.jpg'),
              Image.asset('assets/10.jpg'),
              Image.asset('assets/11.jpg'),
              Image.asset('assets/12.jpg'),
              Image.asset('assets/1.jpg'),
              Image.asset('assets/2.jpg'),
              Image.asset('assets/3.jpg'),
              Image.asset('assets/4.jpg'),
              Image.asset('assets/5.jpg'),
              Image.asset('assets/6.jpg'),
              Image.asset('assets/7.jpg'),
              Image.asset('assets/8.jpg'),
              Image.asset('assets/9.jpg'),
              Image.asset('assets/10.jpg'),
              Image.asset('assets/11.jpg'),
              Image.asset('assets/12.jpg'),
            ]),
      ),
    );
  }
}
