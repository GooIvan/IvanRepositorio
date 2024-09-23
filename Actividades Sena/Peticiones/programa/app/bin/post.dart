import 'package:http/http.dart' as http;

void main() async {
  Map<String, dynamic> map = {'nombre': 'iván', 'color': 'negro', 'edad': '17'};

  var url = Uri.https('jsonplaceholder.typicode.com', '/comments');
  var response = await http.post(url, body: map);

  print(response.statusCode);
  print(response.body);
}
