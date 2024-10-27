import 'package:flutter/material.dart';
import '../models/post.dart';

// ignore: must_be_immutable, camel_case_types
class success extends StatelessWidget {
  Post post;
  success({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 14, 15),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'ID',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 231, 1)),
            ),
            Text(
              '${post.id}',
              style: const TextStyle(color: Colors.white),
            ),
            const Text(
              'USERID',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 231, 1)),
            ),
            Text(
              '${post.userId}',
              style: const TextStyle(color: Colors.white),
            ),
            const Text(
              'TITLE',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 231, 1)),
            ),
            Text(
              '${post.title}',
              style: const TextStyle(color: Colors.white),
            ),
            const Text(
              'BODY',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 231, 1)),
            ),
            Text(
              '${post.body}',
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
