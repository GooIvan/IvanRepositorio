import 'package:flutter/material.dart';
import '../models/respuesta.dart';

/* pasé Success de StatelessWidget a StatefulWidget para poder usar mas funciones
  una de ellas el initState que se ejecuta al inicio de la creación del widget, 
  y el setState que se encarga de actualizar el estado del widget */
// ignore: must_be_immutable
class Success extends StatelessWidget {
  final User user;
  const Success({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        // Alinea los widgets segun el espacio disponible
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text(
                'USER',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('Id: ${user.id}'),
              Text('Name: ${user.name}'),
              Text('Username: ${user.username}'),
              Text('Email: ${user.email}'),
              const Text(
                'ADDRESS',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('Street: ${user.address!.street}'),
              Text('Suite: ${user.address!.suite}'),
              Text('City: ${user.address!.city}'),
              Text('Zipcode: ${user.address!.zipcode}'),
              const Text(
                'GEO',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('Lat: ${user.address!.geo!.lat}'),
              Text('Lng: ${user.address!.geo!.lng}'),
              Text('Phone: ${user.phone}'),
              Text('Website: ${user.website}'),
              const Text(
                'COMPANY',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('Name: ${user.company!.name}'),
              Text('CatchPhrase: ${user.company!.catchPhrase}'),
              Text('Bs: ${user.company!.bs}'),
            ],
          )
        ],
      ),
    ));
  }
}
