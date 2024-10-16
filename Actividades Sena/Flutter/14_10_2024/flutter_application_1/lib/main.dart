import 'package:flutter/material.dart';

import 'homepages/homepage.dart';

void main() {
  runApp(const Miapp());
}

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
          body: FutureBuilder(
            future: getUsuarios(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text('Error 404: Id no encontrada'),
                );
              } else if (snapshot.hasData) {
                return Homepage(snapshot.data);
              } else {
                return const Center(
                  child: Text('No data found'),
                );
              }
            },
          )),
    );
  }
}
