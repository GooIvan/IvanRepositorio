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
      title: 'sena',
      home: Scaffold(
          appBar: AppBar(title: const Text('Mi Aplicacion')),
          body: const Homepage()),
    );
  }
}
