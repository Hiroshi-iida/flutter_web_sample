import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_web_sample/example.dart';
import 'package:flutter_web_sample/top.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

Future main() async {
  // await dotenv.load(fileName: ".env");
  // print(a);
  // LiffInitParam(liffId: '1656967377-6m2kVOQ7');
  // Liff.login(LiffLoginParam('https://liff.line.me/1656967377-6m2kVOQ7'));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  update() async {
    Uri uri = kReleaseMode
        ? Uri.parse('https://9m7i5r48jk.execute-api.us-east-1.amazonaws.com')
        : Uri.parse('https://5mzw2ko471.execute-api.us-east-1.amazonaws.com');
    var result = await http.post(uri);
    setState(() {
      counter = int.parse(result.body);
    });
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Top()
    );
  }
}
