import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';

class Consulta extends StatefulWidget {
  const Consulta({Key? key}) : super(key: key);

  @override
  State<Consulta> createState() => _ConsultaState();
}

class _ConsultaState extends State<Consulta> {
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
                                      onPressed: () {},
                                      backgroundColor: Colors.green,
                                      child: const Icon(Icons.edit),
                                    ),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {},
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
