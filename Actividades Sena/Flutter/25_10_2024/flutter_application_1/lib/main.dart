import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/post.dart';
import 'package:flutter_application_1/widgets/errordata.dart';
import 'package:flutter_application_1/widgets/loading.dart';
import 'widgets/success.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sena',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'APIs JsonPlaceHolder',
            style: GoogleFonts.pressStart2p(
                fontSize: 20, color: const Color.fromARGB(255, 0, 231, 1)),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 25, 27, 31),
        ),
        body: FutureBuilder<Post>(
          future: getPost(),
          builder: (BuildContext context, AsyncSnapshot<Post> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const loading();
            } else if (snapshot.hasError) {
              return const errordata();
            } else {
              return success(post: snapshot.data!);
            }
          },
        ),
      ),
    );
  }

  Future<Post> getPost() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/posts/2');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      return Post(response.body);
    } else {
      throw Exception('error 404');
    }
  }
}
