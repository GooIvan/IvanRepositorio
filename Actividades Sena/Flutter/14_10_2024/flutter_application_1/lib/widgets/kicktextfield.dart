import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Asegúrate de importar esto para usar FilteringTextInputFormatter

// ignore: camel_case_types
class KickTextfield extends StatelessWidget {
  const KickTextfield({
    super.key,
    required this.controllerNumberId,
  });

  final TextEditingController controllerNumberId;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // Este es el estilo del texto que se ingresa en el TextField
      style: const TextStyle(color: Color.fromARGB(255, 0, 231, 1)),
      // Este permite que solo se puedan ingresar números
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],

      controller: controllerNumberId,
      decoration: InputDecoration(
        // Icono al inicio del TextField
        prefixIcon: const Icon(Icons.accessibility_new_rounded,
            color: Color.fromARGB(255, 0, 231, 1)),

        // Borde del TextField
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
        ),

        // Este es el texto que se muestra cuando el TextField está vacío
        hintText: 'Ingresar id',
        hintStyle: const TextStyle(
            color: Color.fromARGB(255, 0, 231, 1), fontSize: 14),

        // Este es el color del texto que se ingresa en el TextField
        filled: true,
        fillColor: const Color.fromARGB(255, 25, 27, 31),
      ),
    );
  }
}
