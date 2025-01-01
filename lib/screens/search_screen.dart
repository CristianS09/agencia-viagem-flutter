import 'package:agencia_viagem/model/destination.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  late Map data;
  //Recebe os dados no construtor
  SearchScreen(this.data, {super.key});
  @override
  Widget build(BuildContext context) {
    Destination destination = Destination(
        title: data['title'],
        price: data['price'],
        url: data['url'],
        reviews: data['reviews'],
        description: data['description']);
    return Scaffold(
      appBar: AppBar(
        //Centraliza o texto no centro da AppBar
        centerTitle: true,
        //Define uma cor para o icone de voltar
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black87,
        title: const Text(
          'Explore Mundo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 15,
              child: Column(children: [
                Text(
                  '${destination.title}',
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                ListTile(
                  title: const Text('Preço',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  subtitle: Text(
                    '${destination.title}',
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
                    '${destination.reviews}',
                  ),
                  leading: const Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                ),
                Image.network(
                  '${destination.url}',
                ),
                ListTile(
                  subtitle: Text('${destination.description}'),
                  leading: Icon(Icons.notes_sharp),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
