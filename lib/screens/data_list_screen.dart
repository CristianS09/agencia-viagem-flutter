import 'package:agencia_viagem/data/data.dart';
import 'package:agencia_viagem/model/destination.dart';

import 'package:flutter/material.dart';

//Widget para exibir os destinos
class DataList extends StatelessWidget {
  DataList({super.key});

  //Lista de Map com os dados de destinos
  final List<Map<String, dynamic>> list = Data.getList;
  //Lista de destinos
  List<Destination> destinationList = [];

  @override
  Widget build(BuildContext context) {
    //Retorna uma lista de objetos destino para cada valor na lista de Map
    destinationList = list
        .map((e) => Destination(
            title: e['title'],
            price: e['price'],
            url: e['url'],
            reviews: e['reviews'],
            description: e['description'],
            country: e['country']))
        .toList();
    //ListView que exibe todo o conteúdo da lista
    return ListView.builder(
      itemCount: destinationList.length,
      itemBuilder: (context, index) {
        //Retorna um objeto destino de acordo com o index
        Destination destination = destinationList.elementAt(index);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.white,
            elevation: 15,
            child: Column(
              children: [
                Text(
                  '${destination.title}',
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                //ListTile para exibir as informações e exibir os icones
                ListTile(
                  title: const Text('Preço',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  subtitle: Text(
                    '${destination.price}',
                  ),
                  leading: const Icon(
                    Icons.monetization_on,
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Avaliação',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    '${destination.reviews}',
                  ),
                  leading: const Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                ),
                ListTile(
                  title: Text('País'),
                  subtitle: Text('${destination.country}'),
                  leading: Icon(Icons.location_city_outlined),
                ),
                Image.asset(
                  '${destination.url}',
                ),
                ListTile(
                  subtitle: Text('${destination.description}'),
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
