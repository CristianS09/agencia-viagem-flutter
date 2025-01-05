import 'package:agencia_viagem/screens/about_screen.dart';
import 'package:agencia_viagem/screens/contact_screen.dart';
import 'package:flutter/material.dart';
import 'package:agencia_viagem/data/data.dart';
import 'package:agencia_viagem/screens/result_screen.dart';

//Widget para pesquisar um destino
class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  //Pega o valor digitado no TextField
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                    icon: IconButton(
                      onPressed: () {
                        //Verifica se o campo foi preenchido
                        String? search = _searchController.text != ''
                            ? _searchController.text.trim()
                            : null;
                        //Lista de Map
                        final list = Data.getList;
                        //Lista com todos os títulos da lista de Map
                        final allTitle = list
                            .map((e) => e['title'].toString().toLowerCase())
                            .toList();
                        //Verifica o título pesquisado em LowerCase para melhorar o resultado da busca
                        bool test = allTitle.contains(search?.toLowerCase());
                        if (test) {
                          //Retorna o elemento pesquisado
                          var result = list.where((e) =>
                              e['title'].toString().toLowerCase() ==
                              search?.toLowerCase());
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    //Passa o restultado para o construtor do ResultScreen
                                    ResultScreen(result.first),
                              ));
                          //Verifica se o campo está vázio e exibe um SnackBar
                        } else if (search == null) {
                          Navigator.of(context).pop();
                          //Procura o Scaffold na árvore de widget
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  duration: Duration(seconds: 3),
                                  content: Text('O campo não foi preenchido')));
                        }
                        //Se o elemento não for encontrado exibe um Snackbar
                        else {
                          Navigator.of(context).pop();
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              duration: const Duration(seconds: 2),
                              content: Text(
                                  'Não foram encrontrado resultado para: $search')));
                        }
                      },
                      icon: const Icon(Icons.search),
                    ),
                    label: const Text('Para onde gostaria de ir?')),
              ),
              ListTile(
                title: Text('Destinos'),
                leading: Icon(Icons.airplanemode_active),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text('Contato'),
                leading: Icon(Icons.phone),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactScreen()));
                },
              ),
              ListTile(
                title: Text('Sobre nós'),
                leading: Icon(Icons.person),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AboutScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
