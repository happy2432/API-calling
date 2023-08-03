import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:project_v01/model/user.dart';

class UserDetails {
  static dynamic fetchDetails() async {
    // generate Uri first in string and provide it as string in below.
    final baseUrl = 'https://reqres.in/api/users/7';
    final uri = Uri.parse(baseUrl);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['data'];
  }
}
