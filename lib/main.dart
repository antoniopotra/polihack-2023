import 'package:polihack2023/views/start/start_interface.dart';
import 'firebase_options.dart'; // Generated file
import 'package:firebase_core/firebase_core.dart'; //
import 'package:cloud_firestore/cloud_firestore.dart'; //
import 'package:flutter/material.dart';
import 'dart:developer';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());

  final db = FirebaseFirestore.instance;

  // insert
  final collection = db.collection('/users');
  collection.add({
    "key": "value1"
  });

  // get everything
  collection.get().then((snapshot) => {
    snapshot.docs.forEach((user) {
      log(user.id);
      if (user.data()["key"] != null) {
        log(user.data()["key"]);
      }
    })
  });

  // delete by id but actually by value
  collection.get().then((value) => {
    value.docs.forEach((element) {
      var value = element.data()["key"];
      if (value == "value1") {
        collection.doc(element.id).delete();
      }
    })
  });

  collection.doc("radu").set({"key" : "a new value"});
}
