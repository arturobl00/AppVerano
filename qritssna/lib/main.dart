import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acceso Itssna',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final now = DateTime.now();
  late final String dia = now.day.toString();
  late final String mes = now.month.toString();
  late final String ano = now.year.toString();
  late final String eano = ano[2] + ano[3];
  late final String data =
      "13-Irma María de Lourdes Arias Bravo-ACCESO PERMITIDO Fecha: $dia.0$mes.$eano";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QR ACCESO ITSSNA"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Ten un gran día"),
              Text(
                data,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              QrImage(
                data: data,
                gapless: true,
                size: 250,
                errorCorrectionLevel: QrErrorCorrectLevel.H,
              )
            ],
          ),
        ),
      ),
    );
  }
}
