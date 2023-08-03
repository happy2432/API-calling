import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:project_v01/services/user_detail_api.dart';
import 'package:http/http.dart' as http;

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  List<dynamic> users = [];
  @override
  void initState() {
    super.initState();
    fetchDetails();
  }

  @override
  Widget build(BuildContext context) {
    //final title = "User " + userId.toString() + " details"
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: Container(
        alignment: Alignment.centerLeft,
        child: Text(users.toString()),
      ),
    );
  }

  void fetchDetails() async {
    final baseUrl = 'https://reqres.in/api/users/7';
    final uri = Uri.parse(baseUrl);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      final users = json['data'];
    });
    // final String name = users[1]['first_name'] + ' ' + users[1]['last_name'];
    // final String email = users[1]['email'];
    // final String id = users[1]['id'];
    // final String imageUrl = users[1]['avatar'].toString();

    // final response = await UserDetails.fetchDetails();
    // setState(() {
    //   users = response;
    // });
  }
}
