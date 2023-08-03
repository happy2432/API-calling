import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project_v01/splash.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:http/http.dart' as http;

void main() /*async*/ {
  // WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final CollectionReference _haappy =
  //     FirebaseFirestore.instance.collection('haappy');

  /*
  await _haappy.add({"email": email, "email add": email add});
   await _haappy.update({"id": id, "michael.lawson@reqres.in": michael.lawson@reqres.in});
   await _haappy.doc(_haappyId).delete();
  */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
