import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/models/respuesta.dart';

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
  final User users;
  Homepage(this.users, {super.key});

  final controllerNumberId = TextEditingController();
  int numberId = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // Esto es para que los elementos se distribuyan de manera uniforme
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'USER',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text('Id: ${users.id}'),
          Text('Name: ${users.name}'),
          Text('Username: ${users.username}'),
          Text('Email: ${users.email}'),
          const Text(
            'ADDRESS',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text('Street: ${users.address!.street}'),
          Text('Suite: ${users.address!.suite}'),
          Text('City: ${users.address!.city}'),
          Text('Zipcode: ${users.address!.zipcode}'),
          const Text(
            'GEO',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text('Lat: ${users.address!.geo!.lat}'),
          Text('Lng: ${users.address!.geo!.lng}'),
          Text('Phone: ${users.phone}'),
          Text('Website: ${users.website}'),
          const Text(
            'COMPANY',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text('Name: ${users.company!.name}'),
          Text('CatchPhrase: ${users.company!.catchPhrase}'),
          Text('Bs: ${users.company!.bs}'),
          Row(
            children: [
              Expanded(
                  child: TextField(
                // Solo te permite ingresar numeros al campo
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: controllerNumberId,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Id a buscar',
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  /* al presionar el boton lo almacenado en el campo de texto se convierte en un entero
                  y se almacena en la variable numberId */
                  numberId = int.parse(controllerNumberId.text);
                  // se llama a la funcion getUsuarios y se le pasa el parametro numberId
                  getUsuarios(numberId: numberId);
                },
                child: const Text('Buscar'),
              )
            ],
          )
        ],
      ),
    );
  }
}

/* al crear la funcion getUsuarios se le pasa un parametro opcional numberId
el cual va a ser utilizado para la url */
Future<User> getUsuarios({int? numberId}) async {
  if (numberId == null || numberId == 0) {
    numberId = 1;
  }
  var url = Uri.https('jsonplaceholder.typicode.com', '/users/$numberId');
  var response = await http.get(url);
  return User(response.body);
}
