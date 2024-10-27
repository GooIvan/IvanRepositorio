import 'dart:convert';

class Post {
  int? userId;
  int? id;
  String? body;
  String? title;

  Post(String jsonString) {
    Map data = jsonDecode(jsonString);
    userId = data["userId"];
    id = data["id"];
    body = data["body"];
    title = data["title"];
  }
}
