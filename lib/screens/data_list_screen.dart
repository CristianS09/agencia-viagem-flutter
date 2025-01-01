import 'package:agencia_viagem/data/data.dart';

import 'package:flutter/material.dart';

//Widget para exibir os destinos
class DataList extends StatelessWidget {
  DataList({super.key});

  //Lista de map com os dados de destinos
  final List<Map<String, dynamic>> list = Data.getList;

  @override
  Widget build(BuildContext context) {
    //ListView que exibe todo o conteudo da lista
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.white,
            elevation: 15,
            child: Column(
              children: [
                Text(
                  '${list[index]['title']}',
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                ListTile(
                  title: const Text('Preço',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  subtitle: Text(
                    '${list[index]['price']}',
                  ),
                  leading: const Icon(
                    Icons.monetization_on,
                    color: Colors.green,
                  ),
                ),
                //ListTile para exibir as informações de reviews e preço
                ListTile(
                  title: const Text(
                    'Avaliação',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    '${list[index]['reviews']}',
                  ),
                  leading: const Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                ),
                Image.network(
                  '${list[index]['url']}',
                  //Exibe um CircularProgressIndicator enquanto a imagem não são carregadas
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
                ListTile(
                  subtitle: Text('${list[index]['description']}'),
                  leading: Icon(Icons.notes_sharp),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
