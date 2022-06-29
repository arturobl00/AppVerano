import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        title: const Text(
          'Detector de Mascarillas',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 26.0, color: Colors.black),
        ),
        image: Image.asset('foto.jpg'),
        photoSize: 170,
        backgroundColor: Colors.white,
        loaderColor: Colors.red);
  }
}
