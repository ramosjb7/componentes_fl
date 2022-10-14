

import 'package:fl_components/widgets/widget.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [

          CustomCardType1(),
          SizedBox(height: 10,),

          CustomCardType2( imageUrl: 'https://img.freepik.com/free-vector/best-scene-nature-landscape-mountain-river-forest-with-sunset-evening-warm-tone-illustration_1150-39403.jpg?w=2000',),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://www.creativefabrica.com/wp-content/uploads/2021/06/12/mountain-landscape-illustration-design-b-Graphics-13326021-1-1-580x386.jpg',),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://i0.wp.com/digital-photography-school.com/wp-content/uploads/2021/03/landscape-photography-tips-4.jpg?resize=1500%2C908&ssl=1',),
          SizedBox(height: 20,),
          CustomCardType2(name: 'Un hermoso paisaje',imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlKbeTY_MxfUwDv5KMUlVGMJBNOPm2x7EINwBm0Vm2Lve6Z3Bi3c3NeaZRprFb-OL_AIw&usqp=CAU',),
          SizedBox(height: 100),
          

        ],
      )
    );
  }
}




