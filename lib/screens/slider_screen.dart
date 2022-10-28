import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();

  
}

class _SliderScreenState extends State<SliderScreen> {

double _slideValue = 100;
bool _sliderEnabled = true;

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
            max: 700,
            value: _slideValue,
            activeColor: AppTheme.primary,
            divisions: 10,

            onChanged:(value){
              _slideValue=value;
              setState((
              ) {}
              );
            } ,),

            Checkbox(
              value: _sliderEnabled, 
              onChanged: (value){
                _sliderEnabled = value ?? true;
              }),

              CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderEnabled, 
                onChanged: ((value) => setState(() {
                  _sliderEnabled = value ?? true;
                  })
                )
              ),

              SwitchListTile.adaptive(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderEnabled, 
                onChanged: ((value) => setState(() {
                  _sliderEnabled = value;
                  })
                )
              ),

                

            Expanded(
              child: SingleChildScrollView(
                  child: Image(
                    image: const NetworkImage('https://pbs.twimg.com/media/ESc9v2YXkAADk6i.jpg'),
                    fit: BoxFit.contain,
                    width: _slideValue,
                  ),
               ),
            ),
               

            
           

        ],
      )
    );
  }
}