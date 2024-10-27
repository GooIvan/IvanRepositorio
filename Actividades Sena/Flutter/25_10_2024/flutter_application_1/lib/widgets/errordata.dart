import 'package:flutter/material.dart';

class errordata extends StatelessWidget {
  const errordata({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 14, 15),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://pbs.twimg.com/media/GQppC7uWgAA0h_g.jpg',
            fit: BoxFit.cover,
          ),
        ],
      )),
    );
  }
}
