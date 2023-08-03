import 'dart:convert';
import 'package:http/http.dart';
import 'package:project_v01/screen/user_details.dart';
import 'package:project_v01/services/user_api.dart';
import "package:flutter/material.dart";
import 'package:project_v01/model/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('User list'),
        ),
        body: ListView.builder(
            itemCount: users.length,
            itemBuilder: ((context, index) {
              final user = users[index];
              final email = user.email;
              // ignore: prefer_interpolation_to_compose_strings
              final name = user.first_name + ' ' + user.last_name;
              final imageUrl = user.avatar.toString();
              final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 27, 112, 128),
              );
              return ListTile(
                leading: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.fill,
                    height: 50,
                    width: 50,
                  ),
                ),
                // title: Text(name),
                // onTap: () {
                //   print(user.id);
                // },
                title: ElevatedButton(
                    child: Text(name),
                    style: buttonPrimary,
                    onPressed: () {
                      // const UserDetails();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserDetails()));
                    }),
                // subtitle: Text(email),
              );
            })));
  }

  void fetchUser() async {
    final response = await UserApi.fetchUser();
    setState(() {
      users = response;
    });
  }
}
