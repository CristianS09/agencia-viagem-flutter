import 'package:agencia_viagem/screens/destination_screen.dart';
import 'package:agencia_viagem/screens/search_screen.dart';
import 'package:flutter/material.dart';

//Tela inicial
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      appBar: AppBar(
        //Centraliza o texto no centro da AppBar
        centerTitle: true,
        backgroundColor: Colors.black87,
        //Define uma cor para o icone do Drawer
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Destinos',
          style: TextStyle(color: Colors.white),
        ),
      ),
      //Drawer
      drawer: SearchScreen(),
      //Tela com os destinos
      body: DestinationScreen(),
    ));
  }
}
