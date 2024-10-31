import 'package:flutter/material.dart';

class Errordata extends StatelessWidget {
  const Errordata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 11, 14, 15),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://pbs.twimg.com/media/GQppC7uWgAA0h_g.jpg',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
