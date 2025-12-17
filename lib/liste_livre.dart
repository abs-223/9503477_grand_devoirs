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
  Librairie("1984","Auteur :George Orwell","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpOS6jl9wnZ7XUMtLJ64iamp4N5a2lNn0kzO-FGdEIlCa-yUb28NAGRrf7C5z8zrx-D65As2az8qrDarwCBZivJn1B_y7yVmyyYs8lt2S3&s=10"),
  Librairie("L'Étranger","Auteur : Albert Camus","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGO6ira_bXSuf5OJODwYXpN8HR9yCjZVpWc1zgAwEVCgNieRZI50OmR3_81sk-ly43jh4P5DPMFoIuFa1YQ-9usUKgLKOFWCMkjPgkKd_T&s=10"),
  Librairie("Dune", "Auteur :Frank Herbert","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6K5koQ5HeFu7UY_dLS0BggHypxn80wINZkW9olASr4mLYT12lo3uoXFfDBPfgD9qSg2RRDF7js4XeS2hC8t3I1YFzgc5uWowh9ZZtFxH0WQ&s=10"),
  Librairie("Petit Pays", "Auteur :Gaël Faye","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0xS4Kx7-19v6lwEWX_Ualy7afDQcYEfPo9Q48U6rVtuNyzA0VNNEK6Mz_kDegnZT8t3p2PlT7BERuYu6q9CtEW1zwnx35mirLcaxT1VMs&s=10"),
  Librairie("Le Chœur des femmes", "Auteur : Martin Winckler","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7Uvp8iCz2iqZQcGNRI7wXu-fGV8ngl4jPftMFzLWk582bs44LIHlhOKxnDvutsBwUUn93Pcz3WQ2o2HG11ZCOF-V1XmGHK22YZcu4_8Zptw&s=10"),
  Librairie("L'Alchimiste", "Auteur : Paulo Coelho","https://m.media-amazon.com/images/I/51sDdxuQVNL._AC_UF1000,1000_QL80_.jpg"),
  Librairie("Sapiens", "Auteur :Yuval Noah Harari","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjmJ1gQQp6UvRI1E67qLV924ArMsRFKxJeDJNs7p_3AnZqlqyiSei9ILmQ0Cpdda5h9s6ZW-zvM8hvW_XxolYYd0Z_ZAmJZK6i5ElsCwx-Zw&s=10"),
  Librairie("Cent ans de solitude", "Auteur :G. García Márquez","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS9sTyuZ6DWlukrGZTUIvfmdI7bI4zli_LupyQJnsSC9qIQveYtsl_dzERJwWKri7Ot0VfE7aCVh10wqmktP64Fl3-Oq5WVG_Th-amb4Lr2Q&s=10"),
  Librairie("La Nuit des temps", "Auteur :René Barjavel","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUxFBGpBjNphZ25rpOLtp88X2oGQM4lPN-EXI2r2_RqNXwtd7hrwAzCUMyxLz11geg9i8ofbnIPDDTjpbE3M63tvDfFvdkPbRWv4BQbOokzg&s=10"),
  Librairie("Changer l'eau des fleurs", "Auteur :Valérie Perrin","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStRt0MoPUEWPzW3Mq26jDqzPmvC6qfJOJJz07aJUoJTcD5dTtVJbKPA2VUt2botamggCsH5aysS7TZEfaLDqCmgIOIwa3jbYottXSkHCH8&s=10"),
  Librairie("Le Meilleur des mondes", "Auteur :Aldous Huxley","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxXvqgDn-EJoGFd1rQNYjATXFlMgZNnfmqKgJt2kVGY5pSJ0wu_aPnJQ7QKlo-XvKFoKudX-5su9jVqlJwNqT75a6oBSkr_H7RNsX3xMKB&s=10"),

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