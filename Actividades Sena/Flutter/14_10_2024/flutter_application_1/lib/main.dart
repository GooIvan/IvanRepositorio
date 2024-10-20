import 'package:flutter/material.dart';
import 'homepages/homepage.dart';

void main() => runApp(const Miapp());

class Miapp extends StatelessWidget {
  const Miapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Esto quita el banner de "debug"
      title: 'sena',
      home: Homepage(), // Llama a la clase Homepage que contiene los widgets
    );
  }
}
