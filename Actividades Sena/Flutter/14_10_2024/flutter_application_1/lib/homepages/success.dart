import 'package:flutter/material.dart';
import '../models/respuesta.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Success extends StatelessWidget {
  final User user;
  const Success({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 11, 14, 15),
        body: DefaultTextStyle(
          style: const TextStyle(color: Colors.white),
          child: Center(
            child: Column(
              // Alinea los widgets segun el parametro
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'USER',
                  style: GoogleFonts.pressStart2p(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Id: ${user.id}'),
                Text('Name: ${user.name}'),
                Text('Username: ${user.username}'),
                Text('Email: ${user.email}'),
                Text(
                  'ADDRESS',
                  style: GoogleFonts.pressStart2p(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Street: ${user.address!.street}'),
                Text('Suite: ${user.address!.suite}'),
                Text('City: ${user.address!.city}'),
                Text('Zipcode: ${user.address!.zipcode}'),
                Text(
                  'GEO',
                  style: GoogleFonts.pressStart2p(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Lat: ${user.address!.geo!.lat}'),
                Text('Lng: ${user.address!.geo!.lng}'),
                Text('Phone: ${user.phone}'),
                Text('Website: ${user.website}'),
                Text(
                  'COMPANY',
                  style: GoogleFonts.pressStart2p(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Name: ${user.company!.name}'),
                Text('CatchPhrase: ${user.company!.catchPhrase}'),
                Text('Bs: ${user.company!.bs}'),
              ],
            ),
          ),
        ));
  }
}
