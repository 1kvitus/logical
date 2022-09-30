import 'package:find/calc_screen_parameter.dart';
import 'package:find/calcscreen.dart';
import 'package:find/divisibleByFive.dart';
import 'package:find/evenodd.dart';
import 'package:find/evenoddPara.dart';
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
      initialRoute: "/divisibleByFive",
      routes: {
        "/evenOdd": (context) => const EvenOdd(),
        "/evenOddPara": (context) => const evenOddPara(),
        "/calculate": (context) => const Calcu(),
        "/calPara": (context) => CalPara(),
        "/divisibleByFive": (context) => DivisibelByFive(),
      },
    );
  }
}
