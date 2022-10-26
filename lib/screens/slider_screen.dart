import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();

  
}

class _SliderScreenState extends State<SliderScreen> {

double _slideValue = 100;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         title: Text('Slider and Checks'),
      ),

      body: Column(
        children: [
          Slider(
            
            min: 50,
            max: 400,
            value: _slideValue,
            activeColor: AppTheme.primary,
            divisions: 10,

            onChanged:(value){
              _slideValue=value;
              setState(() {
                
              });
            } ,)
        ],
      )
    );
  }
}