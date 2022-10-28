import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnblo = true;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Slider and Checks'),
      ),
      body: Column(
        children: [
      
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnblo
            ? (value){
              _sliderValue = value;
              setState(() {});
            }
            : null
          ),

          Checkbox(
            value: _sliderEnblo, 
            onChanged: (value){
              _sliderEnblo = value ?? true;
              setState(() {});
            }
          ),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnblo, 
            onChanged: (value)=>setState(() {
              _sliderEnblo = value ?? true;
            })
          ),

          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnblo, 
            onChanged: (value)=>setState(() {
              _sliderEnblo = value ?? true;
            })
          ),

          const AboutListTile(

          ),
      
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJCwps1n12KqpySXwdWy4kSSrx5CYSnNR6cQ&usqp=CAU'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          
      
      
      
        ],
      )
    );
  }
}