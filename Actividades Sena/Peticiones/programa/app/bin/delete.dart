import 'dart:io';
import 'package:http/http.dart' as http;

void main() async {
  print('¿Que comentario deseas eliminar?');
  int num = int.parse(stdin.readLineSync()!);

  if (num > 500 || num < 0) {
    print('Comentario no encontrado');
    exit(0);
  }
  var url = Uri.https('jsonplaceholder.typicode.com', '/comments/$num');
  await http.delete(url);
  print('Comentario eliminado');
}
