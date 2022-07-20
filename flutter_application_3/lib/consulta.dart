import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';

class Consulta extends StatefulWidget {
  const Consulta({Key? key}) : super(key: key);

  @override
  State<Consulta> createState() => _ConsultaState();
}

class _ConsultaState extends State<Consulta> {
  TextEditingController controllerNombre = TextEditingController();
  TextEditingController controllerApellidos = TextEditingController();

  Future<void> _update([DocumentSnapshot? documentSnapshot]) async {
    if (documentSnapshot != null) {
      controllerNombre.text = documentSnapshot['nombre'];
      controllerApellidos.text = documentSnapshot['apellidos'];
    }

    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: controllerNombre,
                    decoration: const InputDecoration(labelText: 'Nombre'),
                  ),
                  TextField(
                    controller: controllerApellidos,
                    decoration: const InputDecoration(labelText: 'Apellidos'),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        final String nombre = controllerNombre.text;
                        final String apellidos = controllerApellidos.text;
                        await FirebaseFirestore.instance
                            .collection("verano")
                            .doc(documentSnapshot!.id)
                            .update({"nombre": nombre, "apellidos": apellidos});

                        Navigator.pop(context);
                      },
                      child: const Text("Actualizar"))
                ]),
          );
        });
  }

  Future<void> _delete([DocumentSnapshot? documentSnapshot]) async {
    await FirebaseFirestore.instance
        .collection('verano')
        .doc(documentSnapshot!.id)
        .delete();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0,
      child: ListView(
        children: [
          StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection("verano").snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, i) {
                        final DocumentSnapshot documentSnapshot =
                            snapshot.data!.docs[i];
                        QueryDocumentSnapshot x = snapshot.data!.docs[i];
                        return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(x['nombre']),
                                  Text(x['apellidos']),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 8.0, top: 8.0),
                                    child: FloatingActionButton(
                                      onPressed: () {
                                        _update(documentSnapshot);
                                      },
                                      backgroundColor: Colors.green,
                                      child: const Icon(Icons.edit),
                                    ),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      _delete(documentSnapshot);
                                    },
                                    backgroundColor: Colors.red,
                                    child: const Icon(Icons.delete),
                                  )
                                ],
                              )
                            ]);
                      });
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              }),
        ],
      ),
    );
  }
}
