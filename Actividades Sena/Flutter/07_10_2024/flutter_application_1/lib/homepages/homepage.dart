import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/respuesta.dart';

class Homepage extends StatelessWidget {
  final User users;
  const Homepage(this.users, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
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
              const Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Id a buscar',
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Buscar'),
              )
            ],
          )
        ],
      ),
    );
  }
}
