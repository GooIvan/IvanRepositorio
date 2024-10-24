import 'package:flutter/material.dart';

class Errordata extends StatelessWidget {
  const Errordata({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Error 404')],
        ),
      ),
    );
  }
}
