import 'package:polihack2023/views/start/start_interface.dart';
 import 'firebase_options.dart'; // Generated file
 import 'package:firebase_core/firebase_core.dart'; // 
 import 'package:cloud_firestore/cloud_firestore.dart'; // 


import 'package:flutter/material.dart';
//import 'views/start/start_interface.dart';

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(options: 
      DefaultFirebaseOptions.currentPlatform);
   runApp(const MyApp());

   final db = FirebaseFirestore.instance;

   final collection = db.collection('/users');
   collection.doc("radu").set({
    "key": "value"
   });
  }