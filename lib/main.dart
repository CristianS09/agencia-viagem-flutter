import 'package:agencia_viagem/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Desativa o banner de debug
      debugShowCheckedModeBanner: false,
      title: 'Explore Mundo',
      theme: ThemeData(colorSchemeSeed: Colors.blueAccent),
      //Página inicial
      home: HomePage(),
    );
  }
}
