import 'package:flutter/material.dart';
import 'package:flutterhello1/pages/hello_listview.dart';

class DogPage extends StatelessWidget {
  final Dog dog;

  DogPage(this.dog);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dog.nome),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          dog.foto,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
