import 'package:flutter/material.dart';
import 'personne.dart';
import 'experience.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //instanciation d'un objet de type personne :

  personne khalil = new personne(
      name: 'SELLAMI KHALIL',
      phone: '44300794',
      email: 'khalil_sallemi@hotmail.com',
      profilDescription: '-->Etudiant de INSAT en 3eme année en Réseaux et telecom.',
      skills : [
        '>Gestion de temps et de stress',
        '>Esprit collectif',
        '>Polyvanlece',
      ],
      experiences: [
              experience(title: '-->WORLD ROBOT OLYMPIAD (WRO)',date: '-11/2015', description: 'Qualifié au final des olympiades de robotiques Qatar 2015.'),
              experience(title:'-->INTERACT CLUB SFAX ZITOUNA,',date: '-10/2016 -8/2018', description: '*Organisateur de la soirée GOLDENnight 2.0. \n * Organisateur de la journée de sensibilisation a l''occasion de la journee internationale de la SIDA.'),
      ]
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
         padding: const EdgeInsets.fromLTRB(2, 60, 0, 0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                      Text(
                         khalil.name,
                         style: TextStyle(
                           fontSize: 20.0,
                           letterSpacing: 2.0,
                           color: Colors.indigo[900],
                         ),
                       ),
                     //  SizedBox(height: 5.0),
                     Row(
                         children: [
                           Text('Telephone: ',
                             style: TextStyle(
                               letterSpacing: 1.50,
                               color:Colors.blue.shade700,
                             ),),
                           Text(khalil.phone),
                         ],),
                     Row(
                         children: [
                           Text('E_mail: ',
                             style: TextStyle(
                               letterSpacing: 1.50,
                               color:Colors.blue.shade700,
                             ),),
                           Text(khalil.email),
                         ],),
                   ],
                 ),
                 Container(
                   //padding: EdgeInsets.fromLTRB(220.0, 37.5, 0.0, 0.0),
                   child: CircleAvatar(
                     backgroundImage:AssetImage('assets/khalil sellami.jpg') ,
                     radius: 40.0,
                   ),
                 ),
               ],
             ),

             SizedBox(height: 20.0),
             Padding(
               padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
               child: Text('*PROFIL',
               style: TextStyle(
                    fontSize: 14.0,
                 letterSpacing: 2.0,
                 color: Colors.indigo[600],
               ),),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(25.0, 5.0, 0, 0),
               child: Text(khalil.profilDescription),
             ),
             SizedBox(height: 10.0),
             Padding(
               padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
               child: Text('*COMPETENCES PRINCIPALES',
                 style: TextStyle(
                   fontSize: 14.0,
                   letterSpacing: 2.0,
                   color: Colors.indigo[600],
                 ),),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(27.0, 5.0, 0, 0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 crossAxisAlignment: CrossAxisAlignment.start ,
                 children: khalil.skills.map((skills) => Text('$skills')).toList(),
               ),
             ),
             SizedBox(height: 10.0),
             Padding(
               padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
               child: Text('*EXPERIENCES PROFESSIONNELLES',
                 style: TextStyle(
                   fontSize: 14.0,
                   letterSpacing: 2.0,
                   color: Colors.indigo[800],
                 ),),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(27.0, 5.0, 0, 0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 crossAxisAlignment: CrossAxisAlignment.start ,
                 children: khalil.experiences.map((experience) => Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('${experience.title}',
                     style: TextStyle(
                       fontSize: 14.0,
                       color: Colors.indigo[400],
                     ),),
                     Text('${experience.date}'),
                     Text('${experience.description}'),
                   ],
                 )).toList(),
               ),
             )

           ],),
       ),
    );
  }
}

