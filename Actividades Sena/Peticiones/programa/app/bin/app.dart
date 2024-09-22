import 'dart:io';
import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  //  Atributos
  int? postId;
  int? id;
  String? email;
  String? name;
  String? body;

  //  Metodo Constructor
  User(response) {
    Map<String, dynamic> map = jsonDecode(response);
    postId = map['postId'];
    id = map['id'];
    email = map['email'];
    name = map['name'];
    body = map['body'];
  }

  // Sobrescribir 'ToString'
  @override
  String toString() {
    return '''{
      "postId": $postId,
      "id": $id,
      "email": $email,
      "name": $name,
      "body": $body
      }''';
  }
}

void main() async {
  print('Ingresar el numero de comentario a desear');
  int numId = int.parse(stdin.readLineSync()!);

  print('Buscando...');

  //  Petición que se le hace al servidor
  var url = Uri.https('jsonplaceholder.typicode.com', '/comments/$numId');
  var response = await http.get(url);

  User user = User(response.body);

  if (response.statusCode == 200) {
    print(user.toString);
  } else {
    print('Error ${response.statusCode}, Error comentario no encontrado');
  }
}
