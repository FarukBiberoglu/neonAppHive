import 'package:flutter/material.dart';
import 'package:untitled/app_storage.dart';
import 'package:untitled/view/home.dart';

void main() async {
 await  AppStorage.appStorageInitialize();
 runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

