import 'package:_9503477_grand_devoir/librairie.dart';
import 'package:flutter/material.dart';


class DetailsLivre extends StatelessWidget {
  DetailsLivre({super.key, required this.livre});

  final Librairie livre; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(livre.nom)),
    ));
  }
}