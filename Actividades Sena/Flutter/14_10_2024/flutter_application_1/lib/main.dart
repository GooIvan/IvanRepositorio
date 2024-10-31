import 'package:flutter_application_1/widgets/kicktextfield.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepages/success.dart';
import 'models/respuesta.dart';
import 'homepages/waiting.dart';
import 'homepages/errordata.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const Miapp());

// ignore: must_be_immutable
class Miapp extends StatefulWidget {
  const Miapp({super.key});

  @override
  State<Miapp> createState() => _MiappState();
}

// la clase _MiappState es la clase que se encarga de manejar el estado de la aplicacion
class _MiappState extends State<Miapp> {
  // Se inicializa el id del usuario a buscar
  int numberId = 1;
  final controllerNumberId = TextEditingController();
  Future<User>? futureUser; // Future para almacenar los datos del usuario

  // El metodo initState tiene la funcion de inicializar el estado de la aplicacion
  @override
  void initState() {
    super.initState();
    futureUser =
        getUsuarios(numberId); // Inicializa el future con el ID predeterminado
  }

  // A el metodo se le paas un parametro numberId que es el id del usuario a buscar
  Future<User> getUsuarios(int numberId) async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/users/$numberId');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      return User(response.body);
    } else {
      throw Exception('Usuario no encontrado');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Esto quita el banner de "debug"
      title: 'sena',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'APIS JSONPLACEHOLDER',
            style: GoogleFonts.pressStart2p(
                fontSize: 20, color: const Color.fromARGB(255, 0, 231, 1)),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 25, 27, 31),
        ),
        body: FutureBuilder<User>(
          future: futureUser,
          builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // Llama a la clase Waiting que contiene los widgets de carga
              return const Waiting();
            } else if (snapshot.hasError) {
              return const Errordata();
            } else if (snapshot.hasData) {
              return Success(user: snapshot.data!);
            } else {
              return const Errordata();
            }
          },
        ),
        bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 25, 27, 31),
          child: Row(
            children: [
              Expanded(
                child: KickTextfield(controllerNumberId: controllerNumberId),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  //se crea una variable id para almacenar el valor del TextField
                  String id = controllerNumberId.text;
                  if (id.isNotEmpty) {
                    numberId = int.parse(id);
                    setState(() {
                      futureUser = getUsuarios(numberId);
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  // este shape algunos estilos al boton
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(
                        color: Color.fromARGB(255, 63, 65, 68), width: 0.7),
                  ),
                  backgroundColor: const Color.fromARGB(255, 25, 27, 31),
                  foregroundColor: const Color.fromARGB(255, 0, 231, 1),
                ),
                child: const Text('Buscar'),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
