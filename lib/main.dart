import 'package:flutter/material.dart';
import 'package:flutter_web_sample/top.dart';
import 'package:flutter/foundation.dart';

Future main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "main material app title",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Top()
    );
  }
}
