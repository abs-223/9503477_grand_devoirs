import 'package:_9503477_grand_devoir/librairie.dart';
import 'package:_9503477_grand_devoir/details_livre.dart';
import 'package:_9503477_grand_devoir/login.dart';
import 'package:flutter/material.dart';

class ListeLivre extends StatefulWidget {
  const ListeLivre({super.key});

  @override
  State<ListeLivre> createState() => _CorrectionContactlistState();
}

class _CorrectionContactlistState extends State<ListeLivre> {
  List <Librairie> librairie= [ 
  Librairie("1984","Auteur :George Orwell","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  Librairie("L'Étranger","Auteur : Albert Camus","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  Librairie("Dune", "Auteur :Frank Herbert","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  Librairie("Petit Pays", "Auteur :Gaël Faye","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  Librairie("Le Chœur des femmes", "Auteur : Martin Winckler","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  Librairie("L'Alchimiste", "Auteur : Paulo Coelho","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  Librairie("Sapiens", "Auteur :Yuval Noah Harari","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  Librairie("Cent ans de solitude", "Auteur :G. García Márquez","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  Librairie("La Nuit des temps", "Auteur :René Barjavel","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  Librairie("Changer l'eau des fleurs", "Auteur :Valérie Perrin","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  Librairie("Le Meilleur des mondes", "Auteur :Aldous Huxley","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  Librairie("Le Lambeau", "Auteur :Philippe Lançon","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  Librairie("Les Gratitudes", "Auteur :Delphine de Vigan","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  Librairie("Fondation", "Auteur :Isaac Asimov","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  Librairie( "La tresse", "Auteur :Laetitia Colombani","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppkoKsaYMuIoNLDH7O8ePOacLPG1mKXtEng&s"),
  ];
  
  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: Text("Bienvenue "),


// Pour se deconecter

    actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.logout,
        // color: Colors.white,
      ),
      onPressed: (){

    Navigator.of(context).pushReplacement(
            MaterialPageRoute<void>(
            builder: (context) => Login(),
    ),
  );

      },
    )
  ],

      ),
    

    body: ListView.builder(
      itemCount: librairie.length,
      itemBuilder: (context,index){

      return
      InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
            builder: (context) => DetailsLivre( livre : librairie[index]),
      ),
  );
        },
        child: SizedBox(
          child: Card(
            elevation: 5,
            child: ListTile(
            leading: Image.network(librairie[index].photolivre),
            title: Text(librairie[index].nom),
            subtitle: Text(librairie[index].author),
                ),
                
          ),
        ),
      );
    })


    ));

  }
}