import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: const  Text('GK'),
              backgroundColor: Colors.indigo[900],
              
            ),
          )
        ],
      ),
      body: const  Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://media.revistagq.com/photos/5f45010acb266484bb785c78/master/pass/dragon-ball-z.jpg'),
         )
      ),
    );
  }
}