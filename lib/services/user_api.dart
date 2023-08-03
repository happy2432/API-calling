import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:project_v01/model/user.dart';

class UserApi {
  static Future<List<User>> fetchUser() async {
    final uri = Uri.parse('https://reqres.in/api/users?page=2');
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['data'] as List<dynamic>;
    final users = results.map((e) {
      return User(
        id: e['id'],
        first_name: e['first_name'],
        last_name: e['last_name'],
        email: e['email'],
        avatar: e['avatar'],
      );
    }).toList();
    return users;
  }
}
