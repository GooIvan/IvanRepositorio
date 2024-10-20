import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import '../models/respuesta.dart';

/* pasé Homepage de StatelessWidget a StatefulWidget para poder usar mas funciones
  una de ellas el initState que se ejecuta al inicio de la creación del widget, 
  y el setState que se encarga de actualizar el estado del widget */
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

/* Al ser un StatefulWidget, se crea una clase principal que extiende de State<Homepage> 
  y ahí es donde se colocan todos los widgets  */
class _HomepageState extends State<Homepage> {
  final controllerNumberId = TextEditingController();
  Future<User>? futureUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Barra superior
          title: const Text('Mi Aplicacion'),
          centerTitle: true, // Centra el titulo
        ),
        body: Center(
          child: Column(
            // Alinea los widgets segun el espacio disponible
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FutureBuilder<User>(
                future: futureUser,
                builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return const Text('Error: Usuario no encontrado');
                  } else if (snapshot.hasData) {
                    return Column(
                      children: [
                        const Text(
                          'USER',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text('Id: ${snapshot.data!.id}'),
                        Text('Name: ${snapshot.data!.name}'),
                        Text('Username: ${snapshot.data!.username}'),
                        Text('Email: ${snapshot.data!.email}'),
                        const Text(
                          'ADDRESS',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text('Street: ${snapshot.data!.address!.street}'),
                        Text('Suite: ${snapshot.data!.address!.suite}'),
                        Text('City: ${snapshot.data!.address!.city}'),
                        Text('Zipcode: ${snapshot.data!.address!.zipcode}'),
                        const Text(
                          'GEO',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text('Lat: ${snapshot.data!.address!.geo!.lat}'),
                        Text('Lng: ${snapshot.data!.address!.geo!.lng}'),
                        Text('Phone: ${snapshot.data!.phone}'),
                        Text('Website: ${snapshot.data!.website}'),
                        const Text(
                          'COMPANY',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text('Name: ${snapshot.data!.company!.name}'),
                        Text(
                            'CatchPhrase: ${snapshot.data!.company!.catchPhrase}'),
                        Text('Bs: ${snapshot.data!.company!.bs}'),
                      ],
                    );
                  } else {
                    return const Text(
                        'No hay datos disponibles, Por favor ingrese un ID');
                  }
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      controller: controllerNumberId,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Id a buscar',
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      String id = controllerNumberId
                          .text; //se crea una variable id para almacenar el valor del TextField
                      if (id.isNotEmpty) {
                        int numberId = int.parse(id);
                        setState(() {
                          futureUser = getUsuarios(
                              numberId); // Actualiza el Future con el nuevo ID
                        });
                      }
                    },
                    child: const Text('Buscar'),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

// a la funcion se le paas un parametro numberId que es el id del usuario a buscar
Future<User> getUsuarios(int numberId) async {
  var url = Uri.https('jsonplaceholder.typicode.com', '/users/$numberId');
  var response = await http.get(url);

  return User(response.body);
}
