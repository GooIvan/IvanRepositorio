import 'package:flutter/material.dart';
import 'homepages/homepage.dart';

void main() => runApp(const Miapp());

class Miapp extends StatelessWidget {
  const Miapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // Esto quita el banner de "debug"
        title: 'sena',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Mi Aplicacion'),
            centerTitle: true, // Centra el titulo
          ),
          body: const Homepage(),
          // Llamamos a la clase DataFutureBuilder que se encarga de hacer la peticion
        ));
  }
}
