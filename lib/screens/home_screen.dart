import 'package:agencia_viagem/data/data.dart';
import 'package:agencia_viagem/screens/about_screen.dart';
import 'package:agencia_viagem/screens/contact_screen.dart';
import 'package:agencia_viagem/screens/data_list_screen.dart';
import 'package:agencia_viagem/screens/search_screen.dart';
import 'package:flutter/material.dart';

//Tela inicial
class HomePage extends StatelessWidget {
  HomePage({super.key});
  //Pega o valor digitado no TextField
  final TextEditingController _searchController = TextEditingController();

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
                'Explore Mundo',
                style: TextStyle(color: Colors.white),
              ),
            ),
            //Drawer
            drawer: Drawer(
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
                                String? search = _searchController.text != ''
                                    ? _searchController.text.trim()
                                    : null;
                                //Lista com os dados de destinos
                                final list = Data.getList;
                                //Verifica se a lista possui o elemento pesquisado
                                bool test =
                                    list.any((e) => e.containsValue(search));
                                if (test) {
                                  var result = list
                                      .where((e) => e.containsValue(search));
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            SearchScreen(result.first),
                                      ));
                                  //Verifica se o campo está vázio e exibe um SnackBar
                                } else if (search == null) {
                                  Navigator.of(context).pop();
                                  //Procura o Scaffold na árvore de widget
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          duration: Duration(seconds: 3),
                                          content: Text(
                                              'O campo não foi preenchido')));
                                }
                                //Se o elemento não for encontrado exibe um Snackbar
                                else {
                                  Navigator.of(context).pop();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          duration: const Duration(seconds: 3),
                                          content: Text(
                                              'Não foram encrontrado nenhum resultado para: $search')));
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
            ),
            //Tela inicial
            body: DataList()));
  }
}
