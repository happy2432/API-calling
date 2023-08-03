// ignore_for_file: empty_constructor_bodies
// ignore: empty_constructor_bodies
class User {
  final int id; //"id": 9,
  final String email; // "email": "tobias.funke@reqres.in",
  final String first_name; // "first_name": "Tobias",
  final String last_name; // "last_name": "Funke",
  final String avatar; // "avatar": "https://reqres.in/img/faces/9-image.jpg"
  User({
    required this.id,
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.avatar,
  });

  dynamic fromJson(jsonDecode) {}
}
