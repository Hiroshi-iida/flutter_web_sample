import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:flutter_web_sample/example.dart';

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sample material app',
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Center(
            child: Text('next page'),
          )),
    );
  }
}