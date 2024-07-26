import 'package:flutter/material.dart';
import 'package:intro_1team_app/view/home.dart';
import 'package:intro_1team_app/view/ho.dart';
import 'package:intro_1team_app/view/jae.dart';
import 'package:intro_1team_app/view/jong.dart';
import 'package:intro_1team_app/view/min.dart';
import 'package:intro_1team_app/view/won.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/' : (context) => const Home(),
        '/ho' : (context) => const Ho(),
        '/jae' : (context) => const Jae(),
        '/jong' : (context) => const Jong(),
        '/min' : (context) => const Min(),
        '/won' : (context) => const Won(),
      },
      initialRoute: '/',
    );
  }
}
