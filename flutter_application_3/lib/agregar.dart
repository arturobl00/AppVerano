import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Agregar extends StatefulWidget {
  const Agregar({Key? key}) : super(key: key);

  @override
  State<Agregar> createState() => _AgregarState();
}

class _AgregarState extends State<Agregar> {
  TextEditingController controllerNombre = TextEditingController();
  TextEditingController controllerApellidos = TextEditingController();

  create() async {
    try {
      await FirebaseFirestore.instance.collection('verano').doc().set({
        "nombre": controllerNombre.text,
        "apellidos": controllerApellidos.text,
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Agregar a Coleccion"),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Nombre'),
                controller: controllerNombre,
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Apellidos'),
                controller: controllerApellidos,
              ),
              ElevatedButton(
                  onPressed: () {
                    create();
                    Navigator.pop(context);
                  },
                  child: const Text("Guardar Datos"))
            ],
          ),
        ),
      ),
    );
  }
}
