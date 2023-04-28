import 'package:flutter/material.dart';
import 'package:vault/form.dart';
import 'package:vault/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vault/get_lat_long.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: 'Form',
    routes: {
      'Form': (context) => form(),
      'Geo': (context) => GetLatLongScreen()
    },
  ));
}
