import 'package:flutter/material.dart';
import 'package:cozinha/screen/home/home.dart';

void main() => runApp(CozinhandoCasa());

class CozinhandoCasa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: Home());
  }
}
