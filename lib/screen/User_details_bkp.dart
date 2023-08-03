// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';

// // class UserData extends StatefulWidget {
// //   final int userID;
// //   // const UserData({super.key});
// //   // ignore: prefer_const_constructors_in_immutables
// //   UserData({Key? key, @required this.userID}) : super(key: key);

// //   @override
// //   // ignore: no_logic_in_create_state
// //   State<UserData> createState() => _UserDataState(userID);
// // }

// // class _UserDataState extends State<UserData> {
// //   final int userID;
// //   _UserDataState(this.userID);
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text(userID);
// //       ),
// //     );
// //   }
// // }
// import 'dart:convert';
// // import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:project_v01/model/user.dart';

// class User_details extends StatefulWidget {
//   const User_details({super.key});

//   @override
//   State<User_details> createState() => _User_detailsState();
// }

// class _User_detailsState extends State<User_details> {
//   List<dynamic> useras = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Rest api Call'),
//       ),
//       body: ListView.builder(
//         itemCount: useras.length,
//         itemBuilder: (context, index) {
//           final User = useras[index];
//           final first_nam = User['first_name'];
//           final email = User['email'];
//           final ImageUrl = User['picture']['avatar'];
//           return ListTile(
//             leading: ClipRRect(
//               borderRadius: BorderRadius.circular(100),
//               child: Image.network(ImageUrl),                   
//             ),
//             title: Text(first_nam),
//             subtitle: Text(email),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: fetchUsers,
//       ),
//       //floatingActionButton: FloatingActionButton(
//       //onPressed: fetchUsers,
//       //),
//     );
//   }

//   void fetchUsers() async {
//     print('function called');
//     const url = 'https://reqres.in/api/users/7';
//     final uri = Uri.parse(url);
//     final response = await http.get(uri);
//     final body = response.body;
//     final json = jsonDecode(body);
//     setState(() {
//       useras = json['results'];
//     });
//     print('task done');
//   }
// }
