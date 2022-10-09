import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final options = const ['Mrgaman', 'Metal Gear ','Super Smash', 'Final fantasy'];
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text('Listview Tipo 2'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.indigo,
          ),
          onTap: (){
            final game = options[i];
            // print(game);
          },
        ),
        separatorBuilder: (_, __) => const  Divider()
        
      )
    );
  }
}