import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width=50;
  double _height=50;
  Color _color=Colors.red;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  late Timer _timer;

  void changeShape(){
    final random = Random();
    _width  = random.nextInt(300).toDouble()+70;
    _height = random.nextInt(300).toDouble()+70;
    _color = Color.fromRGBO(
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextInt(255),
      1);
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble()+10);
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
         child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
         ),
      ),

      floatingActionButton: GestureDetector (
        child: FloatingActionButton(
          child: const Icon(Icons.play_circle_outline,size: 35,),
          onPressed: () {
            setState(() {
              changeShape();
            });
          },
          ),
          onTapDown: (TapDownDetails details) {
                      const Duration(seconds: 10);
                      _timer = Timer.periodic(Duration(milliseconds: 100), (t) {
                        setState(() {
                          changeShape();
                        });
                      });
                    },
                    onTapUp: (TapUpDetails details) {
                      print('up');
                      _timer.cancel();
                    },
                    onTapCancel: () {
                      print('cancel');
                      _timer.cancel();
                    },
      ),
    );
  }
}