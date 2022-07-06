import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String nameValue = "Mi formulario";
  late String lastValue;

  //GlobalKey es obligatorio al usar un widget Form
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nameValue),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                  decoration: const InputDecoration(labelText: "Nombre"),
                  onSaved: (value) {
                    nameValue = value!;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Campo Vacio";
                    }
                  }),
              TextFormField(
                  decoration: const InputDecoration(labelText: "Apellido"),
                  onSaved: (value) {
                    lastValue = value!;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Campo Vacio";
                    }
                  }),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text(nameValue + " " + lastValue),
                            );
                          });
                    }
                  },
                  child: const Text("Enviar")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Calculadora()));
                  },
                  child: const Text("Calculadora"))
            ],
          ),
        ),
      ),
    );
  }
}

class Calculadora extends StatefulWidget {
  const Calculadora({Key? key}) : super(key: key);

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final formkey1 = GlobalKey<FormState>();
  double numUno = 0;
  double numDos = 0;
  double suma = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formkey1,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: "Dato 1"),
                    onSaved: (value) {
                      numUno = double.parse(value!);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Campo Vacio";
                      }
                    }),
                TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: "Dato 2"),
                    onSaved: (value) {
                      numDos = double.parse(value!);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Campo Vacio";
                      }
                    }),
                ElevatedButton(
                    onPressed: () {
                      if (formkey1.currentState!.validate()) {
                        formkey1.currentState!.save();
                        suma = numUno + numDos;
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(suma.toString()),
                              );
                            });
                      }
                    },
                    child: const Text("Enviar"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
