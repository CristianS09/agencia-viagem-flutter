import 'package:flutter/material.dart';
//Tela de sobre
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        //Define uma cor para o icone do Drawer
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Sobre nós',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: [
            SizedBox(
              height: 14,
            ),
            Text(
              textAlign: TextAlign.center,
              'A Explore Mundo tem 35 anos trabalhando por você!',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: ListTile(
                title: Text('Maria Silva'),
                subtitle: Text('Ótimos preços e excelente atendimento!'),
                leading: CircleAvatar(
                  child: Icon(Icons.person_2),
                ),
              ),
            ),
            Card(
                child: ListTile(
              title: Text('Matheus Carvalho'),
              subtitle: Text(
                  'Melhor investimento que eu já fiz, os pacotes são perfeitos!'),
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
            )),
            Card(
                child: ListTile(
              title: Text('Lucas Adriano'),
              subtitle: Text('Realmente os preços são bem acessíveis.'),
              leading: CircleAvatar(
                child: Icon(Icons.person_3),
              ),
            )),
          ],
        ),
      ),
    ));
  }
}
