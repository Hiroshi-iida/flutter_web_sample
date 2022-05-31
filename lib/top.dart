import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_web_sample/sample.dart';
import 'package:http/http.dart' as http;
import 'dart:js' as js;

import 'example.dart';

class Top extends StatefulWidget {
  const Top({Key? key}) : super(key: key);

  @override
  _TopState createState() => _TopState();
}

class _TopState extends State<Top> {
  update() async {
    Uri uri = kReleaseMode
        ? Uri.parse(dotenv.env['PROD_API_URL']!)
        : Uri.parse(dotenv.env['DEV_API_URL']!);
    var result = await http.post(uri);
    setState(() {
      counter = int.parse(result.body);
    });
  }

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This button is pressed $counter times"),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    update();
                  });
                },
                child: Text(
                  "POST API",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue.shade500,
              ),
              MaterialButton(
                onPressed: () {
                  testFunc1();
                  // js.context.callMethod('testFunc', ['test!!!']);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Sample()),
                  // );
                  // setState(() {
                  //   update();
                  // });
                },
                child: Text(
                  "next page",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue.shade500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
