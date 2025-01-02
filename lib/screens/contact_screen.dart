import 'package:flutter/material.dart';
//Tela de contato
class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

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
            'Contato',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'Endereço',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('Rua Sandra 9'),
                leading: Icon(
                  Icons.home
                ),
              ),
              ListTile(
                title: Text(
                  'Email',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('exploremundo_app@email.com'),
                leading: Icon(Icons.email),
              ),
              ListTile(
                title: Text(
                  'Celular',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('(21)999999999'),
                leading: Icon(Icons.phone),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
