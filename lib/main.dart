import 'package:find/calcscreen.dart';
import 'package:find/evenodd.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green,
                      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const EvenOdd(),
        "/calculate": (context) => const Calcu(),
      },
    );
  }
}
